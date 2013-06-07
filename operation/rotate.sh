#!/usr/bin/env bash
function rotate {
		DIR=$1
		LOGS=`find ${DIR} -name '*.log' -cmin +1380 -type f | grep -v '\.gz$'`
		for f in ${LOGS}; do
				mv $f $f.`date +"%Y%m%d"`
		done

}
rotate /usr/local/cockatoo/logs/

function mongo_hup {
		PIDFILE=$1
		kill -SIGUSR1 `cat ${PIDFILE}`
}
mongo_hup /usr/local/mongo/logs/mongod.pid
mongo_hup /usr/local/mongo/logs/mongodc.pid
mongo_hup /usr/local/mongo/logs/mongos.pid
