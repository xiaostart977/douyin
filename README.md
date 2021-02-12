# 抖音接口辅助
## 抖音视频无水印下载
### 所需文件
* class/dl.class.php
* dl.php
* curl.php
### 使用方法
将所需文件上传到服务器即可
### 接口
[域名]/dl.php?dy=[抖音视频链接]
* 传参
  * [必传]dy：抖音作者主页链接
* 例如：onAug11.cn/dl.php?dy=https://v.douyin.com/onAug11/
* dy参数可以包含文字内容，程序会自动从传参中获取正确的链接
***
## 抖音作者主页视频批量无水印下载
### 所需文件
* class/dl.class.php
* dl.php
* curl.php
### 使用方法
将所需文件上传到服务器即可
### 接口
[域名]/dl.php?dy=[抖音作者主页链接]
* 传参
  * [必传]dy：抖音作者主页链接
* 例如：onAug11.cn/dl.php?dy=https://v.douyin.com/onAug11/
* 运行接口后会在同路径下创建[dl/作者名称]文件夹，并将视频下载到文件夹中
***
## 抖音作者特别关心
### 所需文件
* class/ta.class.php
* ta.php
* curl.php
* MySql.php
* douyin_ta.sql
### 使用方法
将所需PHP文件上传到服务器并运行所需SQL文件，然后在MySql.php文件中修改数据库信息
### 接口
[域名]/ta.php?dy=[抖音作者主页链接]
* 传参
  * [必传]dy：抖音作者主页链接
  * [非必传]server：Bark服务器地址
    * 传入server后，当作者数据发生变化会通过Bark推送到iPhone，否则不推送
  * [非必传]gz：关注数开关，需传入server参数才有效
    * 传0：作者关注数据发生变化不进行推送，否则正常推送
  * [非必传]fs：粉丝数开关，需传入server参数才有效
    * 传0：作者粉丝数据发生变化不进行推送，否则正常推送
  * [非必传]hz：获赞数开关，需传入server参数才有效
    * 传0：作者获赞数据发生变化不进行推送，否则正常推送
  * [非必传]zp：作品数开关，需传入server参数才有效
    * 传0：作者作品数据发生变化不进行推送，否则正常推送
  * [非必传]xh：喜欢数开关，需传入server参数才有效
    * 传0：作者喜欢数据发生变化不进行推送，否则正常推送
  * [非必传]key：自动下载作者最新无水印视频开关
    * 传onAug11：自动下载，否则不下载
    * 如果使用，需要上传class/dl.php和dl.php文件
* 例如：onAug11.cn/ta.php?dy=https://v.douyin.com/1234567/
***
## 注
本接口仅用于PHP学习，请勿用于其他用途