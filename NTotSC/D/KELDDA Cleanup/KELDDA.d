// creator  : C:\PROGRAM FILES\BLACK ISLE\BGII - SOA\WEIDU.EXE (version 20800)
// argument : C:/PROGRAM FILES/BLACK ISLE/BGII - SOA/NTOTSC/D/KELDDA CLEANUP/KELDDA.DLG
// game		 : C:/PROGRAM FILES/BLACK ISLE/BGII - SOA/
// source	 : C:/PROGRAM FILES/BLACK ISLE/BGII - SOA/NTOTSC/D/KELDDA CLEANUP/KELDDA.DLG
// dialog	 : C:/PROGRAM FILES/BLACK ISLE/BGII - SOA//dialog.tlk
// dialogF  : (none)

BEGIN ~KELDDA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 6 even though they appear after this state */
~True()
~ THEN BEGIN 0 // from:
  SAY @1 /* ~Welcome!  The traveling adventurer is never turned away from a house of Lathander, as we strive to aid all who make a difference in the Realms.  If you are battle-worn we can extend a number of necromantic restorations, whatever your need.  A small donation is all the compensation that we require.  If you wish nothing then let me tell you of the madman Bassilus.~ #81202 */
  IF ~~ THEN REPLY @2 /* ~What kind of aid can you give us?~ #81203 */ DO ~StartStore("tem3402",LastTalkedToBy(Myself))
~ EXIT
  IF ~!Dead("BASSILUS")
~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ GOTO 8
  IF ~Dead("BASSILUS")
~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ EXIT
  IF ~Global("X#KivanKeldath","GLOBAL",0)
InParty("kivan")
InMyArea("kivan")
!StateCheck("kivan",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#KivanKeldath","GLOBAL",1)
~ EXTERN ~KIVANJ~ 211
  IF ~GlobalLT("KelddatTalkNewBlunt","GLOBAL",1)
InParty("Will")
~ THEN GOTO 18
  IF ~Global("KelddatTalkNewBlunt","GLOBAL",1)
InParty("Will")
~ THEN REPLY @4 /* ~Can you tell me again what is needed to make Will's flail more powerful?~ #153742 */ GOTO 20
END

IF WEIGHT #0 ~Dead("bassilus")
PartyHasItem("MISC04")
!Global("BassilusDead","GLOBAL",2)
~ THEN BEGIN 1 // from:
  SAY @5 /* ~By the Morning Lord, I see that you have the holy symbol of Bassilus.  It must have been a difficult battle to take down such a powerful man.  Yours is a service that will not soon be forgotten.  It is a pleasure to give you the full reward for which you have worked.~ #81205 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
  IF ~Global("X#KELDDA1","GLOBAL",0)
InParty("jaheira")
InMyArea("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#KELDDA1","GLOBAL",1)
~ GOTO 12
  IF ~Global("X#KELDDA1","GLOBAL",0)
InParty("jaheira")
InMyArea("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#KELDDA1","GLOBAL",1)
~ EXTERN ~JAHEIJ~ 1084
  IF ~Global("X#KELDDA1","GLOBAL",0)
InParty("sharteel")
InMyArea("sharteel")
!StateCheck("sharteel",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#KELDDA1","GLOBAL",1)
~ GOTO 14
  IF ~Global("X#KELDDA1","GLOBAL",0)
InParty("sharteel")
InMyArea("sharteel")
!StateCheck("sharteel",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#KELDDA1","GLOBAL",1)
~ EXTERN ~SHARTJ~ 474
END

IF WEIGHT #1 ~Dead("bassilus")
!PartyHasItem("MISC04")
!Global("BassilusDead","GLOBAL",2)
~ THEN BEGIN 2 // from:
  SAY @14 /* ~So you come here to claim the reward for the slaying of Bassilus.  Good on you if this is true, but you must produce proof.  Bring his Cyric holy symbol to me and you will be paid what you deserve.  This is my word.~ #81206 */
  IF ~~ THEN DO ~StartStore("tem3402",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @15 /* ~'Tis a great service you have done the people of this area, but it merely makes up for your previous acts of violence within these walls.  You will get but 2,000 gold, and then you will leave my sight!  Be thankful the guard does not place you in chains, never mind reward you!~ #81207 */
  IF ~~ THEN DO ~GivePartyGold(2000)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @16 /* ~I realize that it takes two to fight, but you took it too far.  As soon as you used other means than your fists you were essentially using a weapon on an unarmed opponent.  Now, because you were provoked you will be let off with only a fine, but if this happens again you'll be in the guardhouse!~ #81208 */
  IF ~~ THEN DO ~TakePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY @17 /* ~It's unfortunate that people will often come to blows to settle their differences, but it is something we must live with.  Ganging up on one man however, is reprehensible! Now, because you were provoked you will be let off with only a fine, but if this happens again you'll be in the guardhouse!~ #81209 */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~Dead("X#CoranWyvern")
Dead("X#CoranWyvern")
Dead("X#CoranWyvern")
InParty("Coran")
PartyHasItem("MISC52")
!Global("wyvernp","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY @18 /* ~You must be powerful heroes to have brought down such a great beast.  I will take the wyvern head and give you 2,000 gold for your troubles.~ #81210 */
  IF ~~ THEN DO ~GiveGoldForce(2000)
TakePartyItem("MISC52")
SetGlobal("wyvernp","GLOBAL",1)
EraseJournalEntry(@20)
~ SOLVED_JOURNAL @19 /* ~Wyvern hunt.

I have remarkably slain a wyvern...no, a couple of wyverns...in a cave in the Cloakwood.  The mayor of Beregost at the Temple of Lathander rewarded me handsomely for my feat.~ #75149 */ EXIT
  IF ~Global("X#CoranWyvernReward","GLOBAL",0)
InParty("coran")
InMyArea("coran")
!StateCheck("coran",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#CoranWyvernReward","GLOBAL",1)
~ EXTERN ~CORANJ~ 135
END

IF ~~ THEN BEGIN 7 // from:
  SAY @21 /* ~Without the beast's head, I cannot give you the reward.  I hope you understand.~ #81211 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 10.1 9.1 0.1
  SAY @22 /* ~Then I will bid you farewell.  Before you leave, know that there is a madman by the name of Bassilus who roams the wilderness killing any innocents that happen along his path.  If you were to... dispose of him and bring back his holy symbol, there is a large reward offered.  It is a grisly task, but sometimes there is little choice.~ #81212 */
  IF ~~ THEN UNSOLVED_JOURNAL @7 /* ~A family of zombies.

While we were in the temple east of Beregost Kelddath Ormlyr told us that there is a price on the head of a man named Bassilus.  We will be entitled to a large reward if we can eliminate Bassilus and bring back his holy symbol as proof of the deed.~ #74464 */ EXIT
  IF ~Global("X#AjantisKaldathBassilus","GLOBAL",0)
InParty("ajantis")
InMyArea("ajantis")
!StateCheck("ajantis",CD_STATE_NOTVALID)
~ THEN DO ~SetGlobal("X#AjantisKaldathBassilus","GLOBAL",1)
~ EXTERN ~AJANTJ~ 50
END

IF ~~ THEN BEGIN 9 // from:
  SAY @23 /* ~And have you forsaken hope, my son?~ #110192 */
  IF ~~ THEN REPLY @2 /* ~What kind of aid can you give us?~ #81203 */ DO ~StartStore("tem3402",LastTalkedToBy(Myself))
~ EXIT
  IF ~!Dead("BASSILUS")
~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ GOTO 8
  IF ~Dead("BASSILUS")
~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ EXIT
  IF ~InParty("kivan")
InMyArea("kivan")
!StateCheck("kivan",CD_STATE_NOTVALID)
~ THEN GOTO 10
  IF ~InParty("kivan")
InMyArea("kivan")
!StateCheck("kivan",CD_STATE_NOTVALID)
~ THEN EXTERN ~KIVANJ~ 212
END

IF ~~ THEN BEGIN 10 // from: 9.3
  SAY @24 /* ~Gaze upon the sun as it rises, elf. It is born anew every morn - here and everywhere in this world... on this plane. Rejoice, for you are blessed by its rays.~ #110194 */
  IF ~~ THEN REPLY @2 /* ~What kind of aid can you give us?~ #81203 */ DO ~StartStore("tem3402",LastTalkedToBy(Myself))
~ EXIT
  IF ~!Dead("BASSILUS")
~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ GOTO 8
  IF ~Dead("BASSILUS")
~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY @25 /* ~I shall keep that in mind.~ #111947 */
  IF ~~ THEN DO ~GiveGoldForce(2000)
TakePartyItem("MISC52")
SetGlobal("wyvernp","GLOBAL",1)
EraseJournalEntry(@20)
~ SOLVED_JOURNAL @19 /* ~Wyvern hunt.

I have remarkably slain a wyvern...no, a couple of wyverns...in a cave in the Cloakwood.  The mayor of Beregost at the Temple of Lathander rewarded me handsomely for my feat.~ #75149 */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.1
  SAY @26 /* ~Your help was indeed much appreciated.~ #115052 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @26 /* ~Your help was indeed much appreciated.~ #115052 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.3
  SAY @27 /* ~Have a care, lest your head have a price on it, one day.~ #115050 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
  IF ~InParty("jaheira")
InMyArea("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
~ THEN GOTO 15
  IF ~InParty("jaheira")
InMyArea("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
~ THEN EXTERN ~JAHEIJ~ 1085
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY @26 /* ~Your help was indeed much appreciated.~ #115052 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY @27 /* ~Have a care, lest your head have a price on it, one day.~ #115050 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
  IF ~InParty("jaheira")
InMyArea("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
~ THEN GOTO 17
  IF ~InParty("jaheira")
InMyArea("jaheira")
!StateCheck("jaheira",CD_STATE_NOTVALID)
~ THEN EXTERN ~JAHEIJ~ 1086
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY @26 /* ~Your help was indeed much appreciated.~ #115052 */
  IF ~~ THEN DO ~GiveGoldForce(5000)
SetGlobal("BassilusDead","GLOBAL",2)
AddexperienceParty(1000)
EraseJournalEntry(@7)
EraseJournalEntry(@8)
EraseJournalEntry(@9)
EraseJournalEntry(@10)
EraseJournalEntry(@11)
EraseJournalEntry(@12)
EraseJournalEntry(@13)
TakePartyItem("MISC04")
~ SOLVED_JOURNAL @6 /* ~A family of zombies.

I have been well rewarded for dispatching the foul Bassilus. No doubt this 5,000 gold shall come in quite handy.~ #75023 */ EXIT
END

IF WEIGHT #4 ~GlobalLT("KelddatTalkNewBlunt","GLOBAL",1)
InParty("Will")
~ THEN BEGIN 18 // from: 0.4
  SAY @28 /* ~Ah, I see Will has joined you.  Did you know that I can make his flail more powerful?~ #153743 */
  IF ~!Global("KelddatTalkNewBlunt","GLOBAL",1)
~ THEN REPLY @29 /* ~What?  No, I didn't know about Will's flail.  Tell me more.~ #153744 */ GOTO 20
  IF ~Global("KelddatTalkNewBlunt","GLOBAL",1)
~ THEN REPLY @30 /* ~Yes, you did mention that.  But I do not need to make it more powerful right now.~ #153745 */ GOTO 25
  IF ~Global("KelddatTalkNewBlunt","GLOBAL",1)
~ THEN REPLY @31 /* ~Yes, you did mention that.  Could you tell me again what you need?~ #153746 */ GOTO 20
  IF ~GlobalLT("WillKeldath","GLOBAL",1)
~ THEN DO ~SetGlobal("WillKeldath","GLOBAL",1)
~ EXTERN ~WILLJ~ 5
END

IF WEIGHT #5 ~GlobalLT("KelddatTalkNewBlunt","GLOBAL",1)
InParty("Will")
~ THEN BEGIN 19 // from:
  SAY @32 /* ~Good day to you as well, Will.~ #153747 */
  IF ~GlobalLT("KelddatTalkNewBlunt","GLOBAL",1)
~ THEN REPLY @29 /* ~What?  No, I didn't know about Will's flail.  Tell me more.~ #153744 */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0 18.2 18.0 0.5
  SAY @33 /* ~Very well, then.  If you can find a rogue stone, it would be possible to add that component to the flail and with the right spells, Will's flail would be much more powerful.~ #153748 */
  IF ~~ THEN REPLY @34 /* ~Okay, we will have to get back with you on this.~ #153749 */ DO ~SetGlobal("KelddatTalkNewBlunt","GLOBAL",1)
~ EXIT
  IF ~PartyHasItem("MISC45")
PartyHasItem("NTBLUN06")
~ THEN REPLY @35 /* ~You mean a stone like this one?~ #153750 */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.1
  SAY @36 /* ~Yes, that is what I need.  Do you want me to enhance it now?~ #153751 */
  IF ~~ THEN REPLY @37 /* ~Hmm, not right now.~ #153752 */ DO ~SetGlobal("KelddatTalkNewBlunt","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY @38 /* ~Yes, please do.~ #153753 */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY @39 /* ~Okay, then let me have the flail and the stone.  Thank you.~ #153754 */
  IF ~~ THEN DO ~TakePartyItem("MISC45")
TakePartyItem("NTBLUN06")
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY @40 /* ~This should just take a minute.~ #153755 */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY @41 /* ~There we are.  Perfect.~ #153756 */
  IF ~~ THEN DO ~SetGlobal("KelddatMakesNewBlunt","GLOBAL",1)
SetGlobal("KelddatTalkNewBlunt","GLOBAL",2)
DestroyItem("MISC45")
DestroyItem("NTBLUN06")
SmallWait(5)
ForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT)
SmallWait(5)
GiveItemCreate("NTBLUN07",LastTalkedToBy,0,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.0 18.1
  SAY @42 /* ~Well then, what do you need?~ #153757 */
  IF ~~ THEN REPLY @2 /* ~What kind of aid can you give us?~ #81203 */ DO ~StartStore("tem3402",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY @3 /* ~We don't require any help at the moment.~ #81204 */ EXIT
END
