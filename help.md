help output
===========
```

$help
   ? : ?  [List available commands( same as help )]
   abl
      sim
         update-not-required : abl sim update-not-required  [get out of software version mismatch critical error state]
         update-required : abl sim update-required  [simulate software version mismatch critical error state]
      enter : demo enter  [Enter Demo Mode]
      exit : demo exit  [Exit Demo Mode]
      ig : demo ig (<button> | <device> | <all>) <0,1>  [Set ignore state for inputs such as keys]
      kp : demo kp  [Simulate an input event such as key press]
      ps
         config : demo ps config <preset #> <source> <preset_name> <track_name> <album_name> <artist_name> <station>  [Set data for a preset]
      standby : demo standby  [Enter simulated demo standby]
   display : display  [display demo]
      set
         countdown : display set countdown <msg> [upperCount]  (default upperCount=5)  [Set a countdown msg for OLED display]
   dm870 : dm870 get <register> | dm870 set <register> <value>  [DM870 commands]
   envswitch
      accountid
         get : envswitch AccountId get  [Retrieve AccountId from SystemConfiguration File]
         set : envswitch AccountId set <UUID>  [Put AccountId for new Environment into SystemConfiguration File]
      boseurls
         set : envswitch boseurls set <BoseServerURL> <SoftwareUpdateURL>   [Put new Bose Server Urls into /var/lib/Bose/PersistenceDataRoot/OverrideConfigurationEFE.xml]
      newenviron
         activate : envswitch newenviron activate <EnvName> <UserAccountName> <AccountPassword>   [Activate named environment on current server using named account ]
         define : envswitch newenviron define <EnvName> <BoseServerURL> <SoftwareUpdateURL>   [Define a new named environment with Bose Server Urls ]
         select : envswitch newenviron select <EnvName> <ServerUrl> <UserAccountName> <AccountPassword>   [Switch named environment on named account ]
      swupdateurl
         set : envswitch swupdateurl set <URL>  [Put new SwUpdateUrl into /var/lib/Bose/PersistenceDataRoot/OverrideConfigurationEFE.xml]
      testenvironments
         get : envswitch testenvironments get   [Get Test Environments List from Marge]
   exit : quit  [Exit the CLI session( same as quit )]
   ext
      capabilities : ext capabilities search|sort  [Check search/sort capabilities]
      conthist : ext conthist  [list of contents]
      info : ext info  [Check Track Info]
      list : ext list [contentid] [start_offset] [count]  [List container of a Upnp Server]
      loglevel : ext loglevel [<level>]  [Set level]
      next : ext next  [Next track]
      pause : ext pause  [Pause]
      play : ext play [contentid] [track|folder]  [Play a track]
      prev : ext prev  [Previous track]
      repeat : ext repeat [on|one|off]  [Set repeat mode]
      search : ext search [contentid] [start_offset] [count] [search_type] [key_word]  [Search a Upnp Server]
      select : ext select idx  [select a stored music source]
      server : ext server | ext server server_uuid  [check or set current server]
      servers : ext servers  [List Upnp Servers]
      shuffle : ext shuffle [on|off]  [Set shuffle mode]
      sources : ext sources  [check stored music sources]
      status : ext status  [Check Play Status]
      stop : ext stop  [Stop]
      tracks : ext tracks  [list of play_all tracks]
   force_battery : force_battery  [force a battery device to be created, regardless of variant]
   getpdo : getpdo <pdo_name>  [Get PDO data]
   getpdosize : getpdo [<pdo_name>]  [Get PDO data size in bytes]
   gpio : gpio <number> to read, gpio <number> [on | off] to set  [Read input GPIO value or set GPIO output value]
   help : help  [List available commands( same as ? )]
   iheart
      corruptsessionid : iheart corruptsessionid <user>  [Corrupt SessionID to test re-login]
      inject
         inerror : iheart inject inerror <user> <module> <code> [<count>]  [inject inbound service error code]
         outerror : iheart inject outerror <user> <module> [<count>]  [inject outbound access error]
         reqdelay : iheart inject reqdelay <user> <module> <seconds>  [delay sending http request]
         respdelay : iheart inject respdelay <user> <module> <seconds>  [delay http response]
      loglevel : iheart loglevel [<0-7>] or loglevel [critical | error | warning | info | debug | test | verbose | insane]  [set logging level]
      skipsget : iheart skipsget <user>  [Get current skip count]
      stagingserver : iheart stagingserver [on | off]  [enable/disable use of the IHeart staging server (setting is persistent across reboots)]
      test
         relogin : iheart test relogin <user>  [Corrupt SessionID to test re-login]
      testautomationlogging : iheart testautomationlogging [on | off]  [Turn on test automation logging]
   ir : ir <cmd> [args]
	echo [on|off] : echo keys to TAP as received; MUST run 'async_responses on' TAP cmd 
			 in order to see the output  [IR Device commands]
   key : key [key_value (volume_up, volume_down, preset_1, ..., preset_6)] [P&H time out in ms]  [Simulate a key press and release or press and hold]
   local_services : local_services on  [turn on local services (persistent)]
   loglevel : loglevel [<level>] or loglevel [<facility> <on|off>] or loglevel conf  [Set level, set facility on/off, generate a conf file, (current status if no args)]
   logread : logread [on | off]  [turn on logread (persistent)]
      flush : logread flush <usb/fs>  [Flushes the contents of logread to USB or File System (/var/lib/Bose/PersistenceDataRoot/BoseLog/)]
   net
      analysis : net analysis  [Perform a network analysis]
   network
      ap : network ap on | off [<access point name>]  [Turns the access point on and off. When using you must supply an access point name]
      dhcp : network dhcp  [Displays the current dhcp interface]
      loglevel : network loglevel [<0-7>] or loglevel [critical | error | warning | info | debug | test | verbose | insane]  [set logging level]
      mode : network mode auto | wifioff | wifisetup  [Sets the current network operational mode to auto: automatically connects to wired Ethernet, if not wired connects using stored wifi profiles, wifioff: turns the WiFi radio off and allows wired Ethernet connection, wifisetup: only connects to the profile supplied by addprofile and allows wired Ethernet connection]
      status : network status  [Displays the current network status]
      wifi
         log
            ap : network wifi log ap error | warning | info | debug | msgdump | excessive  [Set Access Point daemon logging]
            sta : network wifi log sta error | warning | info | debug | msgdump | excessive  [Set station mode daemon logging]
         profiles
            add : network wifi profiles add <ssid> <security_type> [<password>]  [Attempt to add a wifi profile. The response is asynchronous so run 'async_responses on' to see the response to this command, or type 'network wifi profiles info' to check. Valid security types are none, wep, and wpa_or_wpa2. ]
            clear : network wifi profiles clear  [Clears all WiFi Profiles]
            info : network wifi profiles info  [Displays the current wifi profiles]
         scan : network wifi scan [<maxresults>] [ on | off ]  [Performs a site survey. The response is asynchronous so run 'async_responses on' to see the response to this command. The option on | off switch will turn on and off unsolicited asynchronous responses during wifiseup]
            interval : network wifi scan interval [<interval (in seconds) ]  [Sets the interval between site scans.]
         status : network wifi status  [Displays the current wifi status]
   pandora
      autocomplete : Pandora autocomplete [<off|on>]  [Disable/enable autocomplete search]
      explain : Pandora explain  [explainTrack]
      inactivity : Pandora inactivity [<time in minutes>]  [Set the inactivity timeout (in minutes)]
      list
         accounts : Pandora list accounts  [List the available accounts]
         stations : Pandora list stations [<maximum stations>]  [List the available stations]
         tracks : Pandora list tracks  [List tracks for current station]
      logout : Pandora logout  [Logout]
      maint : Pandora maint [<off|on>]  [Set the maintenance mode]
      playstation : pandora playstation <station index>  [Play a station]
      rate_enabled : Pandora rate_enabled [<true|false>]  [Set the rate enabled/allowed for the current track]
      rating : Pandora rating [<DOWN|NONE|UP>]  [Set the rating for the current track]
      restrict : Pandora restrict [<off|on>]  [Set the Restriced License mode]
      select
         account : Pandora select [<account id>]  [Select account]
      thumbs : Pandora thumbs up[down]  [Thumbs up/down]
   quit : quit  [Quit the CLI session( same as exit )]
   rhinoled
      blink : rhinoled blink 0-63 [amber,white,blue] [wifi,bt,aux,shelby]   [Rhino LED at blink animation]
      disable : rhinoled disable  [Disable PRU]
      intensity : rhinoled intensity 0-63 [amber,white,blue] [wifi,bt,aux,shelby]   [Rhino LED at given intensity]
      off : rhinoled off [amber,white,blue] [wifi,bt,aux,shelby]   [Rhino LED turned off]
      pulsing : rhinoled pulsing 0-63 [amber,white,blue] [wifi,bt,aux,shelby]   [Rhino LED pulsing animation]
      status : rhinoled status [wifi,bt,aux,shelby]  [Returns current LED status for each led or one led if specified]
      update
         downloading : rhinoled update downloading  [Set LED for update downloading]
         installing : rhinoled update installing  [Set LED for update installing]
      wifi
         connected : rhinoled wifi connected  [Set LED for wifi connected while system on]
         connecting : rhinoled wifi connecting  [Set LED for wifi connecting while system on]
         disconnected : rhinoled wifi disconnected  [Set LED for wifi disconnected while system on]
      wifisetup : rhinoled wifisetup  [Set LED for wifi Setup mode]
   rtc : rtc  [gettime, getalarm, enablealarm, disablealarm, getwk, read, settime, setalarm yyyy - mm - dd hh : mm : ss, setwk yyyy - mm - dd hh : mm : ss 1( 0 )]
   scm
      exp : scm exp  [scm experiments]
      fs_ver : scm fs_ver  [display the fs version]
      kill : scm kill  [kill a process]
      list : scm list  [List processes scm manages]
      log
         purge : scm log purge  [purge scm log file]
         read : scm log read  [read back scm log file]
      lsusb : scm lsusb  [displays any usb attached media]
      mfgdata : scm mfgdata  [display the manufacturing data]
      per : scm per on|off  [turn peripherals on or off]
      restart : scm restart  [restart a process if it is restartable, otherwise, kill the process]
      restartnc : scm restartnc  [restart noncore processes]
      sim
         amp-fault : scm sim amp-fault  [simulate detected amp-fault condition]
      standby
         lowpower : scm standby lowpower  [Go to lowpower standby]
         network : scm standby network  [Go to network standby]
      start : scm start  [start a process if it is not running, otherwise, no-op]
      termnc : scm termnc  [terminate noncore processes]
      test
         buttonled : scm test buttonled  [start to test buttons and leds]
      uboot_ver : scm uboot_ver  [display the uboot version]
      wakeup : scm wakeup 0|1  (0--reboot linux; 1-- resume apps)  [set scm wakeup option (experimental)]
   set
      master : set master <IP address>  [Performs a set master call to APServer with master IP as the address]
   spotify
      active
         speaker : Spotify active speaker  [Check if we are the active speaker]
      app
         next : Spotify app next  [Simulate skip next being pressed in the spotify app]
         pause : Spotify app pause  [Simulate pause being pressed in the spotify app]
         play : Spotify app play  [Simulate play being pressed in the spotify app]
         prev : Spotify app prev  [Simulate skip previous being pressed in the spotify app]
      audio
         pause : Spotify audio pause  [Send a pause to audio path]
         play : Spotify audio play  [Send a play to audio path]
      bitrate : Spotify bitrate [0(low) | 1(normal) | 2(high)]  [Set the library's audio bitrate]
      connection : Spotify connection [none | wired | wireless | mobile]  [Get or set the library's connection value]
      debug : Spotify 
      get
         access
            token : Spotify get access token <refresh_token>  [Use the specified refresh token to get an access token (asyncronous output)]
         libuser : Spotify get libuser  [Show the username of the user logged into the Spotify library]
         position : Spotify get position  [See what the library is reporting for the current track position]
         sdk : Spotify get sdk  [Show the version of the Spotify SDK library]
         tokens : Spotify get tokens <code>  [Using the specified code to get access and refresh tokens (asyncronous output)]
         user
            info : Spotify get user info <access_token>  [Get user info with the specified access token (asyncronous output)]
      invalidate : Spotify invalidate  [Invalidate the access token for all users for testing]
      logged
         in : Spotify logged in  [Check to see if the the library is logged in]
      loginoauth : Spotify loginoauth <user> <access token>  [Attempts to log the library in using the specified access token]
      loglevel : Spotify loglevel [<0-7>] or loglevel [critical | error | warning | info | debug | test | verbose | insane]  [set logging level]
      logout : Spotify logout  [Log the current user out]
      next : Spotify next  [Send next to spotify lib]
      pause : Spotify pause  [Send pause to spotify lib]
      play : Spotify play  [Send play to spotify lib]
      prev : Spotify prev  [Send previous to spotify lib]
      reset
         stream : Spotify reset stream  [Reset the audio buffers and tell the AP to stop and reset the url]
      seek : Spotify seek [time in ms]     [Seek to the specified position or if none specified to the last known position]
      selecteduser : Spotify selecteduser  [Get the selected spotify user account]
      user : Spotify user  [Show the last logged in user]
      users : Spotify users  [Print the spotify user accounts]
      zeroconf
         vars : Spotify zeroconf vars  [Get the current zeroconf vars from the library]
   stp_s
      crash : stp_s crash  [will cause the process to crash]
      info : stp_s info  [will display info about stp]
      loglevel : stp_s loglevel [<0-7>] or loglevel [critical | error | warning | info | debug | test | verbose | insane]  [set logging level]
      ping : stp_s ping  [will send a ping message]
   swupdate
      abort : swupdate abort  [Abort the software update operation]
      query : swupdate query  [Request the software update server status. Use 'swupdate view' to see the results]
      start : swupdate start  [Start the software update operation]
      view : swupdate view  [Display the current software update status]
   sys
      auxkey : sys auxkey  [Set the aux button]
      broadcast : sys broadcast    
      setupap <enable/disable> [Set whether setupap mode (auto/off)]
```
