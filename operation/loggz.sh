#!/usr/bin/env bash
function loggz {
		DIR=$1
		
		LOGS=`find ${DIR} -name '*log*' -mmin +1500 -type f | grep -v '\.gz$'`
		for f in ${LOGS}; do
				gzip $f
		done
		
		GZS=`find ${DIRS} -name '*.gz' -mmin +43260 -type f`
		for f in ${GZS}; do
				rm $f
		done
}

loggz /usr/local/mongo/logs/
loggz /usr/local/apache2/logs/
loggz /usr/local/proxy2/logs/
loggz /usr/local/cockatoo/logs/

