import pkg_resources

import os.path
import string
import json

import tensorflow as tf

model = tf.saved_model.load('/var/task/eng_to_ipa/ipa_translator')

def handler(event, context):
    body = json.loads(event["body"])

    errors = []
    if not body["text"]:
        errors.append('Missing text string parameter')

    if len(errors):
        return {
            "statusCode": 400,
            "body": json.dumps(errors)
        }

    text = body["text"].translate(str.maketrans('', '', string.punctuation)).lower()

    text_input = tf.constant([' '.join(x) for x in text.split(' ')])

    result = model.tf_translate(text_input)

    output = []
    for tr in result['text']:
        output.append(''.join(tr.numpy().decode().split(' ')))

    print(output)

    return {
        "statusCode": 200,
        "headers": {"Content-Type": "application/json"},
        "body": json.dumps({"ipa": ' '.join(output)}, ensure_ascii=False)
    }
