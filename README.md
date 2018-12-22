# Terraform Infrastructure for makenew examples

[![CircleCI](https://img.shields.io/circleci/project/github/makenew/.terraform.svg)](https://circleci.com/gh/makenew/.terraform)

Pushing to mater branch triggers deployment on CircleCI.

## Initial Setup

### AWS

1. Login to the AWS console and select `us-east-1` region.
2. Create a private S3 bucket named `makenew-terraform-state-0`.
3. Create a DynamoDB table named `makenew-terraform-state-0`
   with primary key `LockID`.
4. Create an IAM user and access key for Terraform.

### CircleCI

The following environment variables must be set on [CircleCI]:

- `AWS_DEFAULT_REGION`: The AWS region Terraform will deploy to.
- `AWS_ACCESS_KEY_ID`: AWS access key ID.
- `AWS_SECRET_ACCESS_KEY`: AWS secret access key.

These may be set manually or by running the script `./circleci/envvars.sh`.

## License

This Terraform configuration is Copyright (c) 2018 Evan Sosenko.

## Warranty

This software is provided by the copyright holders and contributors "as is" and
any express or implied warranties, including, but not limited to, the implied
warranties of merchantability and fitness for a particular purpose are
disclaimed. In no event shall the copyright holder or contributors be liable for
any direct, indirect, incidental, special, exemplary, or consequential damages
(including, but not limited to, procurement of substitute goods or services;
loss of use, data, or profits; or business interruption) however caused and on
any theory of liability, whether in contract, strict liability, or tort
(including negligence or otherwise) arising in any way out of the use of this
software, even if advised of the possibility of such damage.
