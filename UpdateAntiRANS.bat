@echo off
REM ==================================================
REM ==================================================
REM ==                                              ==
REM ==                  @16.09.2016                 ==
REM ==                                              ==
REM ==      Created by GxGL (George Stamate)        ==
REM ==                                              ==
REM ==      Last Updated on 10.12.2016@23:06        ==
REM ==                                              ==
REM ==    The contents of this file is free to use  ==
REM == and distribute.                              ==
REM ==    This script was created for sysusers to   ==
REM == be able to easily update extentions added to ==
REM == FSRM service with a sigle click.             ==
REM ==    With this idea in mind comes more good!   ==
REM ==                                              ==
REM ==    As a note: You need to run this file as   ==
REM == administrator if you want to get all done.   ==
REM ==                                              ==
REM ==================================================
REM ==================================================

setlocal
cd /d %~dp0
cls
echo[
echo Detecting if you run this script as admin...
REM We use an alternative PAUSE since this is not recognized on some windows versions
ping 127.0.0.1 -n 5 -w 1000 >nul

NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected!
	ping 127.0.0.1 -n 5 -w 1000 >nul goto Start
) ELSE (
    ECHO NOT AN ADMIN! Please run this script as administrator.
	ping 127.0.0.1 -n 5 -w 1000 >nul && GOTO END
)

:Start
filescrn filegroup modify /filegroup:"AntiRANS" /Members:"*.%scoverton|*.0x0|*.1999|*.73i87A|*.CCCRRRPPP|*.CTB2|*.CTBL|*.LeChiffre|*.OMG!|*.OxO|*.PoAr2w|*.R16M01D05|*.SUPERCRYPT|*.SecureCrypted|*.XRNT|*.XTBL|*._crypt|*.a5zfn|*.aaa|*.abc|*.abca|*.axx|*.shit|*.bitstak|*.bleep|*.breaking_bad|*.ccc|*.cerber|*.cerber2|*.cerber3|*.crinf|*.crjoker|*.crptrgr|*.cry|*.cryp1|*.crypt|*.crypted|*.crypto|*.cryptolocker|*.cryptowall|*.cryptz|*.czvxce|*.darkness|*.ecc|*.enc|*.enciphered|*.encrypt|*.encrypted|*.encryptedRSA|*.enigma|*.exx|*.ezz|*.fantom|*.fun|*.good|*.ha3|*.herbst|*.info|*.kernel_complete|*.kernel_pid|*.kernel_time|*.keybtc@inbox_com|*.kimcilware|*.kkk|*.kraken|*.kratos|*.legion|*.locked|*.locky|*.amba|*.lol!|*.magic|*.micro|*.mp3|*.odcodc|*.p5tkjw|*.padcrypt|*.paym|*.paymrss|*.payms|*.paymst|*.paymts|*.payrms|*.pays|*.pdcr|*.purge|*.pzdc|*.r5a|*.razy|*.rdm|*.rekt|*.rokku|*.rrk|*.surprise|*.szf|*.toxcrypt|*.ttt|*.vault|*.venusf|*.vvv|*.wflx|*.windows10|*.xxx|*.xyz|*.zcrypt|*.zepto|*.zyklon|*.zzz|*.0x0|*.1999|*.*obleep|*.LOL!|*.aaa|*.abc|*.bleep|*.ccc|*.ctbl|*.ctb2|*.crinf|*.crjoker|*.cry|*.crypto*|*.cryptotorlocker*|*.darkness|*.ecc|*.enc|*.EnCiPhErEd|*.encrypted*|*.exx|*.ezz|*.frtrss|*.good|*.ha3|*.hydracrypt*|*.kb15|*.kraken|*.lechiffre|*.locky|*.magic|*.micro|*.nochance|*.omg!|*.r16M*|*.r5a|*.rdm|*.rrk|*.supercrypt|*.toxcrypt|*.ttt|*.vault|*.vvv|*.xxx|*.xrnt|*.xtbl|*.xyz|*.zzz|*@gmail_com_*|*@india.com*|*gmail*.crypt|*install_tor*.*|*keemail.me*|*qq_com*|*restore_fi*.*|*ukr.net*|*want%syour%sfiles%sback.*|DECRYPT_HELP.*|HELP_YOUR_FILES.*|confirmation.key|cryptolocker.*|decrypt_instruct*.*|djqfu*.*|enc_files.txt|help_decrypt*.*|helpdecrypt*.*|help_recover*.*|help_restore*.*|help_your_file*.*|how%sto%sdecrypt*.*|how_decrypt*.*|how_recover*.*|how_to_decrypt*.*|how_to_recover*.*|howto_restore*.*|howto_restore_file*.*|howtodecrypt*.*|install_tor*.*|instructions_xxxx.png|last_chance.*|message.txt|readme_decrypt*.*|readme_for_decrypt*.*|recovery_file.txt|recovery_key.txt|*recover_instructions.txt|restore_fi.*|vault.hta|vault.key|vault.txt|HELP_TO_DECRYPT_YOUR_FILES.txt|HELP_TO_SAVE_FILES.txt|DecryptAllFiles.txt|DECRYPT_INSTRUCTIONS.TXT|INSTRUCCIONES_DESCIFRADO.TXT|How_To_Recover_Files.txt|YOUR_FILES.HTML|YOUR_FILES.url|encryptor_raas_readme_liesmich.txt|Help_Decrypt.txt|DECRYPT_INSTRUCTION.TXT|HOW_TO_DECRYPT_FILES.TXT|ReadDecryptFilesHere.txt|Coin.Locker.txt|_secret_code.txt|DECRYPT_ReadMe.TXT|FILESAREGONE.TXT|IAMREADYTOPAY.TXT|HELLOTHERE.TXT|READTHISNOW!!!.TXT|SECRETIDHERE.KEY|IHAVEYOURSECRET.KEY|SECRET.KEY|RECOVERY_FILES.txt|RECOVERY_FILE*.txt|HowtoRESTORE*.txt|howto_recover_file.txt|restorefiles.txt|howrecover+*.txt|_how_recover.txt|recoveryfile*.txt|recoverfile*.txt|Howto_Restore_FILES.TXT|help_recover_instructions+*.txt|_Locky_recover_instructions.txt" 

:END