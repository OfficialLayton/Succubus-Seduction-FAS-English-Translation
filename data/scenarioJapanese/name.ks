*start|
[initname]

; ���O�p�̕ϐ���錾
;[eval exp="sf.name1 ='�A�L��'"]

*edit
[cm]
[nowait]
[font color=0xffffff]���O����͂��Ă��������B[r]
[font color=0xffffff]���O[edit color="0x0000FF" length=200 maxchars=4 name=sf.name1][r]
;���O[edit color="0x0000FF" length=200 maxchars=4 name=sf.name2][r]
[font size=15]
[font color=0xffffff]���S�p�S�����ȓ��ł��ꂼ����͂��ĉ�����[r][r]
[resetfont]
[font color=0xffffff][link target=*ck_name]����ŗǂ�[endlink][r]
[font color=0xffffff][link target=*defaultname]�f�t�H���ɖ߂�[endlink][r]
[font color=0xffffff][link target=*gogame]�L�����Z��[endlink][r]
; �����N�t�H�[�J�X���c�������̃G�f�B�b�g���Ƀt�H�[�J�X���܂�
[eval exp="kag.fore.messages[0].links[0].object.focus()"]
; �V�i���I�̐i�s���~�߂܂�
[s]

*ck_name
;[cm]
; �󔒕���������Ƃ�
[if exp="sf.name1 ==''"]
[jump target=*edit]
[elsif exp="sf.name1.length >=5 || sf.name2 >=5"]
[jump target=*edit]
; �ǂ�ɂ����Ă͂܂�Ȃ��Ƃ�
[else]
[commit]
[next target=*ck_name2]
[endif]

; �f�t�H���g���ɖ߂������Ƃ��̃T�u���[�`��
*defaultname
[jump target=*start]
[s]

; ���O�̍ŏI�m�F
*ck_name2
[cm]
[font color=0xffffff]���Ȃ��̖��O��[emb exp=sf.name1]�ł��ˁB[r]
[font color=0xffffff]����ł�낵���ł����H[r][r]
[font color=0xffffff][link target=*ck_OK]����[endlink][r]
[font color=0xffffff][link target=*ck_NG]�ē���[endlink][r][r]
[s]

*ck_OK
;[cm]
[font color=0xffffff]����ł́A���̖��O�ŃQ�[�����J�n���܂��B[p]
[next target=*gogame]
;[jump storage=�Q�[���{�҂̃V�i���I�t�@�C����]
[s]

*ck_NG
;[cm]
[font color=0xffffff]������x���͂ɖ߂�܂��B[p]
[jump target=*start]
[s]

;�Q�[���J�n�ʒu�ւ̃W�����v
*gogame
[initscene]

;�y��l���z
;�u��l���̃Z���t�e�X�g�v

;�N���b�N�Ń^�C�g���֖߂�܂��B

[begintrans]
[allimage delete]
[endtrans trans=normal time=1000 sync]

[gotostart]
[s]
