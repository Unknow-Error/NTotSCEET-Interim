@ECHO OFF
cd override
tisunpack -f AR01PB.tiz
tisunpack -f AR02PB.tiz
tisunpack -f AR9PBA.tiz
tisunpack -f AR10PB.tiz
tisunpack -f AR11PB.tiz
tisunpack -f AR20PB.tiz
tisunpack -f AR25PB.tiz
tisunpack -f AR30PB.tiz
tisunpack -f AR32PB.tiz
tisunpack -f AR34PB.tiz
tisunpack -f AR51PB.tiz
tisunpack -f AR52PB.tiz
tisunpack -f AR53PB.tiz
tisunpack -f AR60PB.tiz
tisunpack -f AR61PB.tiz
tisunpack -f AR80PB.tiz
tisunpack -f AR81PB.tiz
tisunpack -f AR82PB.tiz
tisunpack -f AR90PB.tiz
tisunpack -f AR9001.tiz
tisunpack -f AR9002.tiz
tisunpack -f BG3400.tiz
tisunpack -f AR9305.tiz

del AR01PB.tiz
del AR02PB.tiz
del AR9PBA.tiz
del AR10PB.tiz
del AR11PB.tiz
del AR20PB.tiz
del AR25PB.tiz
del AR30PB.tiz
del AR32PB.tiz
del AR34PB.tiz
del AR51PB.tiz
del AR52PB.tiz
del AR53PB.tiz
del AR60PB.tiz
del AR61PB.tiz
del AR80PB.tiz
del AR81PB.tiz
del AR82PB.tiz
del AR90PB.tiz
del AR9001.tiz
del AR9002.tiz
del BG3400.tiz
del AR9305.tiz

del tisunpack.exe
cd..

xcopy /q NTotSC\OGG\*.* NTotSC1\*.*
copy NTotSC\oggdec.exe NTotSC1\*.*
cd NTotSC1
oggdec *.ogg
del *.ogg
del oggdec.exe
cd..

del dir NTotSC1

