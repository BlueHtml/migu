#!/usr/bin/env bash 

echo '------------------sign------------------'
curl -H "Cookie: ${COOKIE}" -X POST 'https://gw.aikan.miguvideo.com/ygw/api/dispatch/migu-sign/sign'
echo ''
echo '---------------check sign---------------'
curl -H "Cookie: ${COOKIE}" -X POST 'https://gw.aikan.miguvideo.com/ygw/api/dispatch/migu-sign/checkSign'
echo ''
echo '---------------lottery---------------'
curl -H "Content-Type: application/json; charset=UTF-8" -H "Cookie: ${COOKIE}" -d '{}' -X POST 'https://gw.aikan.miguvideo.com/ygw/api/dispatch/activity/call-charge/user/lottery'
echo '---------------test---------------'
curl -H "Content-Type: application/json; charset=UTF-8" -H "Cookie: ${COOKIE}" -d '{"channel":"0003","payWay":"WAP","amount":99.8,"chargeMoney":100,"choseMoney":100,"activityNO":"","operateId":"3215","homeProv":"","numFlag":"0","source":""}' -X POST 'https://touch.10086.cn/i/v1/pay/saveorder/15168709005?provinceId=571'
