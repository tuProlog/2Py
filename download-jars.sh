get_latest_release() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

TUPROLOG_GITHUB='tuProlog/2p-kt'
TUPROLOG_VERSION=`get_latest_release $TUPROLOG_GITHUB`
TUPROLOG_JAR_URL="https://github.com/$TUPROLOG_GITHUB/releases/download/$TUPROLOG_VERSION/2p-repl-$TUPROLOG_VERSION-redist.jar"

echo $TUPROLOG_JAR_URL

wget -P ./libs/ $TUPROLOG_JAR_URL
