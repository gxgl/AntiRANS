AntiRANS = AntiRANSOMWARE

The scripts included in this folder are useful only for Windows Server.
The compatibility of the script goes from WS2003 to WS2012 which has to have
the FSRM (File Server Resource Manager) service installed.

AntiRANS protects your server and your shares by blocking creation of the files listed in the AntiRANS.xml and UpdateAntiRANS.cmd
The script will apply those rules for all your drives and partitions in the system.

The files are:
AntiRANS.xml ===========> Contains definitions of the blocked extensions (should not be modified)
AntiRANS_template.xml ==> Contains the defined template of file screening (should not be modified)
ImportAntiRANS.cmd =====> This is the file that you need to use to import the XML files to your server
ExportAntiRANS.cmd =====> This file should be used just in case you want to export your definitions to other servers
UpdateAntiRANS.cmd =====> This file should be used in case you have to delete/update an extension for the file screening.

NOTE: Be careful editing the "UpdateAntiRANS" file. You should keep the same structure, else it will fail.

Example editing UpdateAntiRANS:

filescrn filegroup modify /filegroup:"AntiRANS" /Members:"*.%scoverton|*.0x0|*.1999|*.73i87A|*.CCCRRRPPP|*.CTB2|*.CTBL|*.LeChiffre|*.OMG!|*.OxO|*.PoAr2w|*.R16M01D05|*.SUPERCRYPT|*.SecureCrypted|*.XRNT|*.XTBL|*._crypt|*.a5zfn|*.aaa|*.abc|*.abca|*.axx|*.shit|*.bitstak|*.bleep|*.breaking_bad|*.ccc|*.cerber|*.cerber2|*.cerber3|*.crinf|*.crjoker|*.crptrgr|*.cry|*.cryp1|*.crypt|*.crypted|*.crypto|*.cryptolocker|*.cryptowall|*.cryptz|*.czvxce|*.darkness|*.ecc|*.enc|*.enciphered|*.encrypt|*.encrypted|*.encryptedRSA|*.enigma|.....................|_how_recover.txt|recoveryfile*.txt|recoverfile*.txt|Howto_Restore_FILES.TXT|help_recover_instructions+*.txt|_Locky_recover_instructions.txt" 

See that pipe sign? It should be placed between extenstions, or file definitions, but not at the start or at the finish of the command.
As you can see here (at the begining) /Members:"*.%scoverton|*.0x0... or here (at the end) ....help_recover_instructions+*.txt|_Locky_recover_instructions.txt"

I recommend to add new extensions, or file definitions, at the begging of the list, after *.%sconverton| and don't forget to include the pipe at the end. See the following example:
*.%scoverton| and *.0x0| we will include a new extention between those two as follows
*.%scoverton|*.file|*.0x0| which is a good way
this will not be good *.%scoverton|*.file*.0x0| and the script will fail.

Always include pipe at the end of definition, like this *.file|

The last definition from the command doesn't have to have pipe after it.