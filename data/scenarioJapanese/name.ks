*start|
[initname]

; 名前用の変数を宣言
;[eval exp="sf.name1 ='アキラ'"]

*edit
[cm]
[nowait]
[font color=0xffffff]名前を入力してください。[r]
[font color=0xffffff]名前[edit color="0x0000FF" length=200 maxchars=4 name=sf.name1][r]
;名前[edit color="0x0000FF" length=200 maxchars=4 name=sf.name2][r]
[font size=15]
[font color=0xffffff]※全角４文字以内でそれぞれ入力して下さい[r][r]
[resetfont]
[font color=0xffffff][link target=*ck_name]これで良い[endlink][r]
[font color=0xffffff][link target=*defaultname]デフォ名に戻す[endlink][r]
[font color=0xffffff][link target=*gogame]キャンセル[endlink][r]
; リンクフォーカス→苗字部分のエディット欄にフォーカスします
[eval exp="kag.fore.messages[0].links[0].object.focus()"]
; シナリオの進行を止めます
[s]

*ck_name
;[cm]
; 空白部分があるとき
[if exp="sf.name1 ==''"]
[jump target=*edit]
[elsif exp="sf.name1.length >=5 || sf.name2 >=5"]
[jump target=*edit]
; どれにも当てはまらないとき
[else]
[commit]
[next target=*ck_name2]
[endif]

; デフォルト名に戻したいときのサブルーチン
*defaultname
[jump target=*start]
[s]

; 名前の最終確認
*ck_name2
[cm]
[font color=0xffffff]あなたの名前は[emb exp=sf.name1]ですね。[r]
[font color=0xffffff]これでよろしいですか？[r][r]
[font color=0xffffff][link target=*ck_OK]決定[endlink][r]
[font color=0xffffff][link target=*ck_NG]再入力[endlink][r][r]
[s]

*ck_OK
;[cm]
[font color=0xffffff]それでは、この名前でゲームを開始します。[p]
[next target=*gogame]
;[jump storage=ゲーム本編のシナリオファイル名]
[s]

*ck_NG
;[cm]
[font color=0xffffff]もう一度入力に戻ります。[p]
[jump target=*start]
[s]

;ゲーム開始位置へのジャンプ
*gogame
[initscene]

;【主人公】
;「主人公のセリフテスト」

;クリックでタイトルへ戻ります。

[begintrans]
[allimage delete]
[endtrans trans=normal time=1000 sync]

[gotostart]
[s]
