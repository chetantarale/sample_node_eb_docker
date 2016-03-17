if [[ $SHIPPABLE_API_URL == *"beta"* ]];then
  ENV=Beta
else
  ENV=Prod
fi
#
# if [[ $AWS_EB_IMAGE_NAME == *"amazonaws"* ]];then
#   REGISTRY_NAME=ECR
# elif [[ $AWS_EB_IMAGE_NAME == *"quay.io/"* ]];then
#   REGISTRY_NAME=Quay.io
# else
#   REGISTRY_NAME=DockerHub
# fi

sed -i -- 's/\[VERSION\]/'$BUILD_NUMBER'/g' views/index.ejs
sed -i -- 's/\[ENV\]/'$ENV'/g' views/index.ejs
# sed -i -- 's/\[REGISTRY_NAME\]/'$REGISTRY_NAME'/g' views/index.ejs
