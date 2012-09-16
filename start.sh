#!/bin/bash

echo Loop door alle logfiles heen

echo Baarl NPolder Ht LT
pypy ./pompscanner.py ./pomplogs/Baarl_NPolder_HT_LT.txt.gz 1-1-2000 1-1-2013 3,7 ./pompoutput/Baarl_NPolder_HT_LT_output.csv

echo Bed rondebroekHT LT Freq
pypy ./pompscanner.py ./pomplogs/Bed_rondebroekHT-LT-Freq.txt.gz 1-1-2000 1-1-2013 3,4 ./pompoutput/Bed_rondebroekHT-LT-Freq_output.csv

echo Beukers zwartsluis
pypy ./pompscanner.py ./pomplogs/Beukers_zwartsluis.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Beukers_zwartsluis_output.csv

echo BlankenhamHT LT
pypy ./pompscanner.py ./pomplogs/BlankenhamHT-LT.txt.gz 1-1-2000 1-1-2013 3,4 ./pompoutput/BlankenhamHT-LT_output.csv

echo Broameul1
pypy ./pompscanner.py ./pomplogs/Broammeul1.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Broammeul1_output.csv

echo Broameul2
pypy ./pompscanner.py ./pomplogs/Broammeul2.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Broammeul2_output.csv

echo BuitenbrHt LT
pypy ./pompscanner.py ./pomplogs/BuitenbrHt_LT.txt.gz 1-1-2000 1-1-2013 3,7 ./pompoutput/BuitenbrHt_LT_output.csv

echo Debiet De Wulpen
pypy ./pompscanner_debiet.py ./pomplogs/Debiet_De_Wulpen.txt.gz 1-1-2000 1-1-2013 2 ./pompoutput/Debiet_De_Wulpen.csv

echo DeHeven
pypy ./pompscanner.py ./pomplogs/DeHeven.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/DeHeven_output.csv

echo deukten
pypy ./pompscanner.py ./pomplogs/deukten.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/deukten_output.csv

echo Duinigermeerweg
pypy ./pompscanner.py ./pomplogs/Duinigermeerweg.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Duinigermeerweg_output.csv

echo Eesveen1
pypy ./pompscanner.py ./pomplogs/Eesveen1.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Eesveen1_output.csv

echo Eesveen3
pypy ./pompscanner.py ./pomplogs/Eesveen3.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Eesveen3_output.csv

echo Eesveen3.1
pypy ./pompscanner.py ./pomplogs/Eesveen3_1.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Eesveen3_1_output.csv

echo Eesveen3.2
pypy ./pompscanner.py ./pomplogs/Eesveen3_2.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Eesveen3_2.output.csv

echo Gelderingen
pypy ./pompscanner.py ./pomplogs/Gelderingen.txt.gz 1-1-2000 1-1-2013 3,5 ./pompoutput/Gelderingen_output.csv

echo Giethoorn
pypy ./pompscanner.py ./pomplogs/Giethoorn.txt.gz 1-1-2000 1-1-2013 3,5 ./pompoutput/Giethoorn_output.csv

echo GrotePolder
pypy ./pompscanner.py ./pomplogs/GrotePolder.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/GrotePolder_output.csv

echo Hagenbroek
pypy ./pompscanner.py ./pomplogs/Hagenbroek.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Hagenbroek_output.csv

echo Halfweg
pypy ./pompscanner.py ./pomplogs/Halfweg.txt.gz 1-1-2000 1-1-2013 3,5 ./pompoutput/Halfweg_output.csv

echo Leeuwterveld
pypy ./pompscanner.py ./pomplogs/Leeuwterveld.txt.gz 1-1-2000 1-1-2013 3,4 ./pompoutput/Leeuwterveld_output.csv

echo MarkerTbroek
 pypy ./pompscanner.py ./pomplogs/MarkerTbroek.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/MarkerTbroek_output.csv

echo Stroink
pypy ./pompscanner.py ./pomplogs/Stroink.txt.gz 1-1-2000 1-1-2013 3,5,7 ./pompoutput/Stroink_output.csv

echo Tussen de Diepten
pypy ./pompscanner.py ./pomplogs/Tussen_de_Diepten.txt.gz 1-1-2000 1-1-2013 3 ./pompoutput/Tussen_de_Diepten_output.csv

echo Wetering
pypy ./pompscanner.py ./pomplogs/wetering.txt.gz 1-1-2000 1-1-2013 3,4,6 ./pompoutput/wetering_output.csv

 
