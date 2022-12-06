#!/bin/sh
if [ ! -f UUID ]; then
  UUID="10c541d7-9e5b-4d84-b285-785a7d4074df"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

