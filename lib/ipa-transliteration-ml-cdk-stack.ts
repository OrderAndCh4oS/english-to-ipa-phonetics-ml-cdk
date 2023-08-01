import * as cdk from 'aws-cdk-lib';
import {Duration} from 'aws-cdk-lib';
import {Construct} from 'constructs';
import {Cors, LambdaIntegration, RestApi} from "aws-cdk-lib/aws-apigateway";
import {DockerImageCode, DockerImageFunction} from "aws-cdk-lib/aws-lambda";
import * as path from "path";

export class IpaTransliterationMlCdkStack extends cdk.Stack {
    constructor(scope: Construct, id: string, props?: cdk.StackProps) {
        super(scope, id, props);

        const api = new RestApi(this, 'IpaTransliterationApi', {
            defaultCorsPreflightOptions: {
                allowHeaders: Cors.DEFAULT_HEADERS,
                allowMethods: Cors.ALL_METHODS,
                allowOrigins: Cors.ALL_ORIGINS
            },
        });

        const engToIpaHandler = new DockerImageFunction(this, 'IpaTransliterationLambdaFunction', {
            code: DockerImageCode.fromImageAsset(
                path.join(__dirname, '../lambdas'),
                {
                    cmd: ["ipa_transliteration.index.handler"]
                }
            ),
            memorySize: 4096,
            timeout: Duration.seconds(120)
        });

        api.root.addMethod('post', new LambdaIntegration(engToIpaHandler))
    }
}
