sudo yum install unzip

GAUGE_LATEST=`curl -w "%{url_effective}\n" -L -s -S https://github.com/getgauge/gauge/releases/latest -o /dev/null`

GAUGE_LATEST_VERSION=`echo $GAUGE_LATEST | sed 's/.*\/v//'`
BIT=`uname -m`

if [ "$BIT"=="x86_64" ];
then 
	DOWNLOAD="gauge-$GAUGE_LATEST_VERSION-linux.x86_64.zip"
else
	DOWNLOAD="gauge-$GAUGE_LATEST_VERSION-linux.x86.zip"
fi

wget "$GAUGE_LATEST/$DOWNLOAD"

OUTPUT_DIR="./gauge_$GAUGE_LATEST_VERSION"

unzip $DOWNLOAD -d $OUTPUT_DIR

cd $OUTPUT_DIR

`./install.sh`
