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
for $f in `find /usr/local/mongo/logs -name '*.pid'`;do
		mongo_hup $f
done
