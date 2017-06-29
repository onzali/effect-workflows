spark-submit --master yarn --deploy-mode client  \
    --driver-memory 10g \
    --executor-memory 10g --num-executors 25 --executor-cores 5 \
    --jars "elasticsearch-hadoop-2.4.0.jar" \
    --py-files python-lib.zip \
    effectWorkflow-es.py \
    --host 128.9.35.71 \
    --port 9200 \
    --hdfsManager "http://cloudmgr03.isi.edu:50070" \
    $@