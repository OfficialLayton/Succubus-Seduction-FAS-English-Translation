*start|ending
[initscene]

[bgm storage='snowsnow.ogg']

[begintrans]
[allimage delete]
[darks4]
[ディーナ opacity=0 xpos=350 正面 眉妖しい笑み 目妖しい笑みＡ 口妖しい笑み]
[ev エンドロール opacity=255 ypos=-760]
[endtrans trans=normal time=1000 sync]

[ディーナ xpos=300 opacity=255 accel=acdec time=1000 sync]

;[begintrans]
;[ev opacity=255 time=1000 nosync nowait]
[ev ypos=0 accel=acdec time=4000 sync wait=500][l]
;[endtrans]

[ev ypos=760 accel=acdec time=4000 sync]

[ディーナ xpos=350 opacity=0 accel=acdec time=1000 wait=500 sync]

[begintrans]
[allimage delete]
[黒]
[endtrans trans=normal time=2000 wait=2000 sync]

[endscene]
*end|

[gotostart]
[s]
