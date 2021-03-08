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

DATETIME=`date "+%Y%m%d%H%M"`

echo "Name: ${NAME}"
echo "Path: ${PATH_CONFIG}"
echo "DateTime: ${DATETIME}"
echo "Name-Datetime: ${NAME}-${DATETIME}"

gcloud deployment-manager deployments create "${NAME}-${DATETIME}" --config "${PATH_CONFIG}"

STATUS=$?

exit ${STATUS}