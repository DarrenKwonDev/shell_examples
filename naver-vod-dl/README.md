# naver vod dl

## for what?

download video by ts(transport stream) merging  
ex - naver tv vod

## prequisites

-   perl 호환 정규식을 위해 pcregrep가 설치되어 있어야 합니다.

## use

```sh
# url은 https 프로토콜을 통해 ts(transport stream)을 요청하는 Request URL을 말합니다.
sh agg_ts.sh $path $video_title $url $last_ts_number
```

## url guide (naver case)

-   url은 아래 꼴과 같습니다.

```bash

url=https://b01-kr-naver-vod.pstatic.net/**/$date/hls/$uuid-$tsNumber.ts?_lsu_sa_=$_lsu_sa_
```

-   새로고침을 할 때마다 \_lsu_sa\_는 변경됩니다. 따라서 새로고침 후 lsu_sa를 발급받은 직후 다운로드를 진행해야 합니다.
-   40분 영상 기준 $tsNumber는 000001부터 000591까지 존재합니다. 임의의 시간 기준(4초 가량)으로 영상을 잘라 서빙하는 것 같습니다.
