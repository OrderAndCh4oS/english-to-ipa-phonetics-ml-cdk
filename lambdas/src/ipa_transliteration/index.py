import pkg_resources

import os.path
import string
import json

import tensorflow as tf

loaded_models = {}

def handler(event, context):
    body = json.loads(event["body"])

    allowed_language_codes = [
        "de",
        "en_UK",
        "fr_FR"
    ]

    errors = []
    if not body["text"]:
        errors.append('Missing text string parameter')
    if not body["language_code"]:
        errors.append('Missing language_code string parameter')
    if body["language_code"] and body["language_code"] not in allowed_language_codes:
        errors.append(f'Provided language_code is not allowed must be one of {", ".join(allowed_language_codes)}')

    if len(errors):
        return {
            "statusCode": 400,
            "body": json.dumps(errors)
        }

    text = body["text"].translate(str.maketrans('', '', string.punctuation)).lower()
    language_code = body["language_code"]

    text_input = tf.constant([' '.join(x) for x in text.split(' ')])

    if language_code in loaded_models:
        model = loaded_models[language_code]
    else:
        model = tf.saved_model.load(f'/var/task/ipa_transliteration/{language_code}')
        loaded_models[language_code] = model

    result = model.tf_translate(text_input)

    output = []
    for tr in result['text']:
        output.append(''.join(tr.numpy().decode().split(' ')))

    print(language_code, text, output)

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json",
           "Access-Control-Allow-Origin": "*"
        },
        "body": json.dumps({"ipa": ' '.join(output)}, ensure_ascii=False)
    }
