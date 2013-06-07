#!/usr/bin/env bash
# Usage : 
#   syncmongo.sh [SERVICE] [TEMPLATE]
#
# Restore site data from filesystem to mongodb.
#
#   SERVICE  : 
#      ALL       : default
#      core      : 
#      mongo     : 
#
#   TEMPLATE : 
#      ALL       : default
#      layout    :
#      component :
#      static    :
#      storage   :

S=$1
if [ "${S}" = "" ]; then
		S=ALL
		T=ALL
else
		T=$2
		if [ "${T}" = "" ]; then
				T=ALL
		fi
fi


if [ "${S}" = "ALL" -o "${S}" = "core" ]; then
		if [ "${T}" = "ALL" ]; then
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db core,layout
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db core,component
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db core,static
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db core,storage
		else
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db core,${T}
		fi

fi
if [ "${S}" = "ALL" -o "${S}" = "mongo" ]; then
		if [ "${T}" = "ALL" ]; then
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db mongo,layout
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db mongo,component
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db mongo,static
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db mongo,storage
		else
				/usr/local/cockatoo/tools/beak/beak_mv.bash --from file --to mongo,127.0.0.1:27017 --db mongo,${T}
		fi
fi
