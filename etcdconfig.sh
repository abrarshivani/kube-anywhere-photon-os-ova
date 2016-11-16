# location /etc/etcdconfig.sh
source /etc/default/flannel
echo $ETCD_ENDPOINTS $NETWORK
/bin/etcdctl --no-sync --endpoints=$ETCD_ENDPOINTS set /coreos.com/network/config '{ "Network": '"\"${NETWORK}\""' }'