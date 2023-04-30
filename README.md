# Seq2Seq English to IPA Phonetics Model API

This API exposes an English to International Phonetic Alphabet (IPA) conversion Tensorflow model. The model is a proof of concept for transforming English text into its corresponding IPA phonetic representation. The end goal of this project is to aid the generation of IPA phonetics dictionaries for various languages and dialects.

## Model Repo

[Sequence to Sequence English to IPA Phonetics Model](https://github.com/OrderAndCh4oS/phonetic-translation-ml-seq2seq-attention)

## Prerequisites

Before using this API, ensure that you have installed:

 - Node.js
 - AWS CLI
 - AWS CDK
 - Docker
 - PNPM

If you have not installed these prerequisites, please refer to their official documentation for detailed installation instructions.

## Quick Start

1. Clone this repository:

```sh
git clone https://github.com/OrderAndCh4oS/english-to-ipa-phonetics-ml-cdk
cd english-to-ipa-phonetics-ml-cdk
```

2. Install dependencies:

```sh
pnpm install
```

3. Deploy your stack via CDK:

```sh
pnpm cdk:deploy
```

4. After successful deployment, access the API through provided endpoint URL in the deployment output.

5. To remove the stack from AWS after use, run:

```sh
pnpm cdk:destroy
```

## API Documentation

The Seq2Seq English to IPA Phonetics API provides an easy-to-use endpoint for converting written English text into its corresponding IPA phonetic representation.

### POST /

Request:

- Content-Type: application/json

- Body:

  ```json
  {
      "text": "The quick brown fox jumps over the lazy dog"
  }
  ```

Response:

- Content-Type: application/json

- Body:

  ```json
  {
      "ipa": "/θˈiː/ /kwˈɪk/ /bɹˈaʊn/ /fˈɒks/ /dʒˈʌmps/ /ˈəʊvɐ/ /θˈiː/ /lˈeɪzi/ /dˈɒɡ/"
  }
  ```

## License

This project is licensed under the terms of the MIT license.

## Non-ML Language to IPA Repos

[Phonetics Translator NextJS](https://github.com/OrderAndCh4oS/phonetics-translator-next)
[Phonetics Translator Scripts](https://github.com/OrderAndCh4oS/phonetics-transliterator)
