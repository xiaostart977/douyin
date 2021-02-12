<?php
function get_url($url) {
    $Header=array("User-Agent:Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1");
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL,$url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
    curl_setopt($ch,CURLOPT_HTTPHEADER,$Header);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
    $result =  curl_exec($ch);
    curl_close ($ch);
    $result=mb_convert_encoding($result, 'UTF-8', 'UTF-8,GBK,GB2312,BIG5');
    return $result;
}
?>