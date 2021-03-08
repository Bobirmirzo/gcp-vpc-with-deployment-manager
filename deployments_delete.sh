NAME=$1

if [ -z ${NAME} ] ; then
  echo "Need Name"
  exit 1
fi

OPTIONS="--quiet"

echo "Options: ${OPTIONS}"

gcloud deployment-manager deployments delete "${OPTIONS}" "${NAME}"