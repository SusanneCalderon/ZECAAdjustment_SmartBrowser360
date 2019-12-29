--Fields of Freight Order
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81797
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81788
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81785
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81796
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81792
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81791
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81784
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81783
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81793
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81798
;

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=81781
;

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=81775
;

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=81782
;

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=81794
;

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=81795
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-12-23 02:29:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=81775
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81806
;

-- --Fields of Freight Order Line
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81813
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81805
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81811
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81812
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81802
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81804
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81814
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81809
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81807
;

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=81803
;

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000024
;

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=9020628
;

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=82954
;

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=82953
;

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1019391
;

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1000007
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-12-23 02:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=81801
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-12-23 02:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000024
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-12-23 02:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=82954
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=82953
;

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1019391
;

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000007
;

-- wg. Fehler in PO-Fenster
UPDATE C_Order set mfg_Linea_Prodotti_ID=1000021 where issotrx='N' and AD_Client_ID in (1000003 , 1000006) and (mfg_Linea_Prodotti_ID is null or mfg_Linea_Prodotti_ID=1000014);
