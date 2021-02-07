#!/usr/bin/env bash 

echo '------------------sign------------------'
curl -H "Cookie: ${COOKIE}" -X POST 'https://godshadows.com/api/Leav/gethq'
echo ''
echo '---------------check sign---------------'
curl -H "Cookie: ${COOKIE}" -X POST 'https://gw.aikan.miguvideo.com/ygw/api/dispatch/migu-sign/checkSign'
