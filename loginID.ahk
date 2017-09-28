#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
^j::
   Send, My First Script
Return

::sf::
   Send, SELECT * FROM PS_
Return

::aa::
   Send, a1221688
Return

::pp::
   Send, Test@123
Return

::SGWL::
   Send, SELECT * FROM PS_G_FORM_WL GWL, PSWORKLIST WL`nWHERE`nGWL.BUSPROCNAME = WL.BUSPROCNAME`nAND GWL.ACTIVITYNAME    = WL.ACTIVITYNAME`nAND GWL.EVENTNAME       = WL.EVENTNAME`nAND GWL.WORKLISTNAME    = WL.WORKLISTNAME`nAND GWL.INSTANCEID      = WL.INSTANCEID`nAND GWL.TRANSACTIONID   = WL.TRANSACTIONID`nAND WL.INSTSTATUS IN (0,1);
Return

::SJ::
   Send, SELECT * FROM PS_JOB J`nWHERE --J.EMPLID='1642128' AND`nJ.EFFDT=(SELECT MAX(J1.EFFDT) FROM PS_JOB J1 WHERE J1.EMPLID=J.EMPLID AND J1.EMPL_RCD=J.EMPL_RCD AND J1.EFFDT<=SYSDATE)`nAND J.EFFSEQ=(SELECT MAX(J2.EFFSEQ) FROM PS_JOB J2 WHERE J2.EMPLID=J.EMPLID AND J2.EMPL_RCD=J.EMPL_RCD AND J2.EFFDT=J.EFFDT)`nAND J.PER_ORG='EMP' --AND J.HR_STATUS='A'`nORDER BY J.EMPL_RCD, J.EFFDT DESC, J.EFFSEQ DESC
Return

::SGF::
   Send, SELECT * FROM PS_G_FORMLIST F`nWHERE`nF.G_FORM_STATUS NOT IN ('E','A','I') AND F.G_FORM_ID=:1 AND F.G_FORM_TYPE=:2
Return

::SUL::
   Send, SELECT * FROM PS_UL_MEMBERS_UOA UL WHERE UL.UL_GRP_UOA='ECSC' AND OPRID=:1
Return

::QP::
   Send, PP
Return

#C::
   Send, !WL
   Send, !TRD
Return

MButton::AltTabMenu
WheelDown::AltTab
WheelUp::ShiftAltTab