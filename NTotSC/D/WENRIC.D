APPEND ~WENRIC~

IF ~Global("ZombiesDead","GLOBAL",21)~ THEN BEGIN NewArea
  SAY @0
  IF ~~ THEN DO ~RevealAreaOnMap("AR01PB")~ JOURNAL @1 EXIT
END

END