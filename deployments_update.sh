NAME=$1
PATH_CONFIG=$2

if [ -z ${NAME} ] ; then
    echo "Need Name"
    exit 1
fi

if [ -z ${PATH_CONFIG} ] ; then
  echo "Need Config File Path"
  exit 1
fi

gcloud deployment-manager deployments update "${NAME}" --config "${PATH_CONFIG}"

STATUS=$?

exit ${STATUS}