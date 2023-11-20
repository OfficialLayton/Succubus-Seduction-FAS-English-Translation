*start|
[initname]

[eval exp="f.candle=0"]

;[link target=*ck_ts1]テストスルーア１　　　　　[endlink]
;[link target=*ck_ts2]テストスルーア１(目パチ)　[endlink]
[link target=*start0]共通スタート　　　　　　　[endlink]
[link target=*start6]共通エンド　　　　　　　　[endlink]
[link target=*ck_d1 ]ディーナルート１　　　　　[endlink]
[link target=*ck_d2 ]ディーナルート２　　　　　[endlink]
[link target=*ck_d3 ]ディーナルート３　　　　　[endlink]
[link target=*ck_d4 ]ディーナルート４　　　　　[endlink]
[link target=*ck_d5a]ディーナルート５（蝋燭０）[endlink]
[link target=*ck_d5b]ディーナルート５（蝋燭５）[endlink]
[link target=*ck_de ]ディーナエンド　　　　　　[endlink]
[link target=*ck_s1 ]スルーアルート１　　　　　[endlink]
[link target=*ck_s2 ]スルーアルート２　　　　　[endlink]
[link target=*ck_s3 ]スルーアルート３　　　　　[endlink]
[link target=*ck_s4 ]スルーアルート４　　　　　[endlink]
[link target=*ck_s5a]スルーアルート５（蝋燭０）[endlink]
[link target=*ck_s5b]スルーアルート５（蝋燭５）[endlink]
[link target=*ck_se ]スルーアエンド　　　　　　[endlink]
[link target=*title ]タイトルに戻る　　　　　　[endlink]
[s]

*start0
[next storage=night0.ks]
[s]

*start6
[next storage=night6.ks]
[s]

*ck_d1
[next storage=night1_black.ks]
[s]

*ck_d2
[next storage=night2_black.ks]
[s]

*ck_d3
[next storage=night3_black.ks]
[s]

*ck_d4
[next storage=night4_black.ks]
[s]

*ck_d5a
[eval exp="f.candle=0"]
[next storage=night5_black.ks]
[s]

*ck_d5b
[eval exp="f.candle=5"]
[next storage=night1_black.ks]
[s]

*ck_d6
[next storage=night6_black.ks]
[s]

*ck_s1
[next storage=night1_white.ks]
[s]

*ck_s2
[next storage=night2_white.ks]
[s]

*ck_s3
[next storage=night3_white.ks]
[s]

*ck_s4
[next storage=night4_white.ks]
[s]

*ck_s5a
[eval exp="f.candle=0"]
[next storage=night5_white.ks]
[s]

*ck_s5b
[eval exp="f.candle=5"]
[next storage=night1_white.ks]
[s]

*ck_s6
[next storage=night6_white.ks]
[s]

*title
[gotostart]
[s]

;///////////////////////////////

*ck_ts1
[next storage=02_night1_white.txt]
[s]

*ck_ts2
[next storage=02_night1_white_eye.txt]
[s]
