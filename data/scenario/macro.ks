; 各シーンの初期化用
[macro name=initscene]
[backlay]
[clearlayers]
[stopse buf=1]
[stopse buf=2]
[stopbgm]
[stopvideo]
[video visible=false]
[history enabled=true]
[rclick enabled=true jump=false]
[position page=fore layer=message1 frame="" left=0 top=0 width=8 height=8 visible=false]
[position page=fore layer=message0 frame="messagewindow" opacity=&sf.windowopacity left=0 top=564 width=1024 height=190 marginL=150 marginT=40 marginR=40 marginB=16 nameLeft=-20 nameTop=31 nameWidth=250 nameHeight=50 namealign=0 namevalign=0 visible=false]
[current layer=message0 page=fore]
[sysbutton name=sys_bar    normal="sys_bar" x=0 y=170 disabled]
[sysbutton name=msg_hide   x=992 y=170 exp="kag.hideMessageLayerByUser()"]
[sysbutton name=msg_config x=943 y=170 exp="startConfig()"]
[sysbutton name=msg_exit   x=894 y=170 exp='kag.close()']
[sysbutton name=msg_title  x=845 y=170 exp="gotoTitle()"]
[sysbutton name=msg_log    x=796 y=170 exp="kag.onShowHistoryMenuItemClick()"]
[sysbutton name=sys_voic   x=747 y=170 exp="replayVoice(&tf.repname,&tf.repfile)"]
[sysbutton name=msg_skip   x=698 y=170 exp="kag.onSkipToNextStopMenuItemClick()" nostable]
[sysbutton name=msg_auto   x=649 y=170 exp="kag.onAutoModeMenuItemClick()" nostable]
[sysbutton name=msg_qload  x=600 y=170 exp="quickloadAction()"  cond="!tf.recollect"]
[sysbutton name=msg_qsave  x=551 y=170 exp="quicksaveAction2()" cond="!tf.recollect"]
[sysbutton name=msg_load   x=502 y=170 exp="startLoad()"        cond="!tf.recollect"]
[sysbutton name=msg_save   x=453 y=170 exp="startSave()"        cond="!tf.recollect"]
[init]
[selopt normal=select_normal over=select_over left=0 top=80 width=1024 height=360]
[eval exp="f.thumname=void"]
[linemode    mode=free     ]
[craftername mode=false    ]
[autoindent  mode=true     ]
[erafterpage mode=true     ]
[endmacro]

; 各シーンの初期化用
[macro name=initname]
[backlay]
[clearlayers]
[stopse buf=1]
[stopse buf=2]
[stopbgm]
[stopvideo]
[video visible=false]
[history enabled=false]
[rclick enabled=false jump=false]
[position layer=message0 frame=''left=0 top=0 width=1024 height=768 marginL=50 marginT=50 marginR=250 marginB=16 visible=false]
[current layer=message0]
[init]
[selopt normal=select_normal over=select_over left=0 top=80 width=1024 height=360]
[eval exp="f.thumname=void"]
[linemode mode=free]
[craftername mode=false]
[autoindent mode=true]
@erafterpage mode=true
[endmacro]

[macro name=ss_init]
[stopse buf=1]
[stopse buf=2]
[stopbgm]
[stopvideo]
[video visible=false]
[history enabled=true]
[rclick enabled=true jump=false]
[current layer=message0]
[init]
[selopt normal=select_normal over=select_over left=0 top=80 width=1024 height=360]
[eval exp="f.thumname=void"]
[linemode mode=page]
[craftername mode=false]
[autoindent mode=true]
@erafterpage mode=true
[endmacro]

[macro name=trial_init]
[stopse buf=1]
[stopse buf=2]
[stopbgm]
[stopvideo]
[video visible=false]
[history enabled=true]
[rclick enabled=true jump=false]
[position page=fore layer=message1 frame="" left=0 top=0 width=8 height=8 visible=false]
[position layer=message0 frame="messagewindow" opacity=&sf.windowopacity left=0 top=529 width=1280 height=190 marginL=200 marginT=50 marginR=250 marginB=16 nameLeft=150 nameTop=-10 nameWidth=300 nameHeight=50 namealign=0 namevalign=0 visible=false]
[current layer=message0]
[sysbutton name=sys_bar    normal="sys_bar" x=0 y=158 disabled]
[sysbutton name=msg_hide   x=1248 y=158 exp="kag.hideMessageLayerByUser()"]
[sysbutton name=msg_config x=1168 y=158 exp="startConfig()"]
[sysbutton name=msg_exit   x=1104 y=158 exp='kag.close()']
[sysbutton name=msg_title  x=1040 y=158 exp="gotoTitle()"]
[sysbutton name=msg_log    x=976  y=158 exp="kag.onShowHistoryMenuItemClick()"]
[sysbutton name=sys_voic   x=912  y=158 exp="replayVoice(&tf.repname,&tf.repfile)"]
[sysbutton name=msg_skip   x=848  y=158 exp="kag.onSkipToNextStopMenuItemClick()" nostable]
[sysbutton name=msg_auto   x=784  y=158 exp="kag.onAutoModeMenuItemClick()" nostable]
[sysbutton name=msg_qload  x=704  y=158 exp="quickloadAction()"]
[sysbutton name=msg_qsave  x=624  y=158 exp="quicksaveAction2()"]
[sysbutton name=msg_load   x=560  y=158 exp="startLoad()"]
[sysbutton name=msg_save   x=496  y=158 exp="startSave()"]
[init]
[selopt normal=select_normal over=select_over left=0 top=80 width=1024 height=360]
[eval exp="f.thumname=void"]
[linemode mode=page]
[craftername mode=false]
[autoindent mode=true]
@erafterpage mode=true
[endmacro]

[macro name=endscene]
[msgoff]
[stopse buf=1]
[stopse buf=2]
[bgm stop time=1000]
[begintrans]
[allimage delete]
[endtrans trans=normal time=2000 wait=1000]
[endmacro]

[macro name=title_delete]
[stopaction]
@title02 opacity=0 time=300
@title03 opacity=0 time=300
@title04 opacity=0 time=300
@title04a opacity=0 time=300 wait=100
@title05 opacity=0 time=600
@title01 opacity=0 time=600 wait=600 sync
@title01 delete
@title02 delete
@title03 delete
@title04 delete
@title05 delete
[endmacro]

[macro name=title_delete2]
[stopaction]
@title01 delete
@title02 delete
@title03 delete
@title04 delete
@title05 delete
[endmacro]

[macro name=蝋燭カットイン]
[layer name=cutin file=蝋燭カットイン  level=5 cond='f.candle==0' normal time=1000 sync]
[layer name=cutin file=蝋燭カットイン1 level=5 cond='f.candle==1' normal time=1000 sync]
[layer name=cutin file=蝋燭カットイン2 level=5 cond='f.candle==2' normal time=1000 sync]
[layer name=cutin file=蝋燭カットイン3 level=5 cond='f.candle==3' normal time=1000 sync]
[layer name=cutin file=蝋燭カットイン4 level=5 cond='f.candle==4' normal time=1000 sync]
[layer name=cutin file=蝋燭カットイン5 level=5 cond='f.candle==5' normal time=1000 sync]
[endmacro]

[macro name=蝋燭消]
[cutin delete normal time=1000 sync]
[endmacro]

[macro name=フラッシュ]
[newlay name=flash file=wh level=10 trans=normal time=50 noshift nocamera]
[flash delete normal time=200]
[endmacro]

[macro name=フラッシュ白]
[newlay name=flash file=wh level=10 trans=normal time=50 noshift nocamera]
[flash delete normal time=200]
[endmacro]

[macro name=フラッシュ黒]
[newlay name=flash file=bg_black level=10 trans=normal time=50 noshift nocamera]
[flash delete normal time=200]
[endmacro]

[macro name=赤フラッシュ]
[newlay name=flash file=red level=10 trans=normal time=50 opacity=80]
[flash delete normal time=200]
[endmacro]

[macro name=暗転]
@begintrans
@env reset stopcamera
@allimage delete
@endtrans normal time=900
[endmacro]

[macro name=白転]
@begintrans
@env reset stopcamera
@allimage delete
@event file=wh
@endtrans normal time=900
[endmacro]

@macro name=画面ノベル
[position layer=message0 frame="bk" opacity=60 left=0 top=0 width=1280 height=720 marginL=300 marginT=100 marginR=250 marginB=16 nameLeft=200 nameTop=0 nameWidth=200 nameHeight=50 namealign=0 namevalign=0 visible=false]
[current layer=message0]
[linemode mode=page]
@endmacro

@macro name=画面ノベル蛍
[position layer=message0 frame="" opacity=0 left=0 top=0 width=1280 height=720 marginL=300 marginT=15 marginR=250 marginB=16 nameLeft=200 nameTop=0 nameWidth=200 nameHeight=50 namealign=0 namevalign=0 visible=false]
[current layer=message0]
[linemode mode=page]
@endmacro

@macro name=画面通常
[position layer=message0 frame="messagewindow" opacity=&sf.windowopacity left=0 top=529 width=1280 height=190 marginL=200 marginT=60 marginR=250 marginB=16 nameLeft=200 nameTop=0 nameWidth=200 nameHeight=50 namealign=0 namevalign=0 visible=false]
[current layer=message0]
[linemode mode=page]
@endmacro



@return
