*start|
[initname]

[eval exp="f.candle=0"]

;[link target=*ck_ts1]�e�X�g�X���[�A�P�@�@�@�@�@[endlink]
;[link target=*ck_ts2]�e�X�g�X���[�A�P(�ڃp�`)�@[endlink]
[link target=*start0]���ʃX�^�[�g�@�@�@�@�@�@�@[endlink]
[link target=*start6]���ʃG���h�@�@�@�@�@�@�@�@[endlink]
[link target=*ck_d1 ]�f�B�[�i���[�g�P�@�@�@�@�@[endlink]
[link target=*ck_d2 ]�f�B�[�i���[�g�Q�@�@�@�@�@[endlink]
[link target=*ck_d3 ]�f�B�[�i���[�g�R�@�@�@�@�@[endlink]
[link target=*ck_d4 ]�f�B�[�i���[�g�S�@�@�@�@�@[endlink]
[link target=*ck_d5a]�f�B�[�i���[�g�T�i�X�C�O�j[endlink]
[link target=*ck_d5b]�f�B�[�i���[�g�T�i�X�C�T�j[endlink]
[link target=*ck_de ]�f�B�[�i�G���h�@�@�@�@�@�@[endlink]
[link target=*ck_s1 ]�X���[�A���[�g�P�@�@�@�@�@[endlink]
[link target=*ck_s2 ]�X���[�A���[�g�Q�@�@�@�@�@[endlink]
[link target=*ck_s3 ]�X���[�A���[�g�R�@�@�@�@�@[endlink]
[link target=*ck_s4 ]�X���[�A���[�g�S�@�@�@�@�@[endlink]
[link target=*ck_s5a]�X���[�A���[�g�T�i�X�C�O�j[endlink]
[link target=*ck_s5b]�X���[�A���[�g�T�i�X�C�T�j[endlink]
[link target=*ck_se ]�X���[�A�G���h�@�@�@�@�@�@[endlink]
[link target=*title ]�^�C�g���ɖ߂�@�@�@�@�@�@[endlink]
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
