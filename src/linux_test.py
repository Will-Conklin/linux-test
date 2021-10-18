import boto3

session = boto3.Session(region_name='us-east-1')

client = session.client('s3')

client.put_object(Body=b'testing',Bucket='s3-will-dev',Key='test.txt')