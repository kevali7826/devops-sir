docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID kevali7826/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID kevali7826/$JOB_NAME:latest

docker push kevali7826/$JOB_NAME:$BUILD_ID

docker push kevali7826/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID kevali7826/$JOB_NAME:$BUILD_ID kevali7826/$JOB_NAME:latest
