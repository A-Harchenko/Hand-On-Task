provider "aws" {
  alias = "us-east-1"
  region = "us_east-1"
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_sns_topic" "topic-sns-us-east" {
  provider = aws.us-east-1
  name = "topic-sns-us-east"
}

resource "aws_sns_topic" "topic-sns-us-west" {
  provider = aws.us-west-2
  name = "topic-sns-us-west"
