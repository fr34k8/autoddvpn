#!/bin/sh

echo "[`date`]: Killing openvpn ..."
OPENVPN_NUM=`ps | grep openvpn | wc -l`
if [ ${OPENVPN_NUM} -ne 1 ]; then
	killall openvpn
fi
sleep 1

openvpn --config /jffs/openvpn/openvpn.conf --daemon 
echo "[`date`]: Openvpn started! Reconnect succeed! End script"
