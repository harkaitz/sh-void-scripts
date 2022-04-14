# SH-VOID-SCRIPTS

Void Linux scripts for system administration.

## Help

hvoid-https

    Usage: hvoid-https ...
    
    Configure a `vhost,https` load balancer using `haproxy`. The
    service name is `https`. SSH certificated are searched for in
    `/etc/ssl/<domain>.cert`. List websites in `/etc/https.csv` with
    the following format:
    
        > <domain>,<host>:<port>
    
    Subcommands:
    
    ... show          : Show configuration.
    ... domains       : Print configured domains.
    ... config        : Print `haproxy` configuration file.
    ... run           : Execute the service in foreground.
    ... install SSH|- : Install `https` service. (Only Void Linux).
    ... enable  SSH|- : Enable `https` service. (Only Void Linux).
    ... disable SSH|- : Disable `https` service. (Only Void Linux).

hvoid-server

    Usage: hvoid-server [-r SSH] ...
    
    Install base utilities and services I need for operating
    a server.
    
    ... i-all     : i-{nonfree,base,shell,clock5}.
    
    ... i-clock5  : Install `clock5` service.
    ... i-nonfree : Install nonfree repositories.
    ... i-base    : Base utilities such as `nano`, `wget`, ...
    ... i-shell   : Configure shell.
    
    ... i-chrony  : Install and enable chrony time daemon.

minicgi

    Usage: minicgi ...
    
    Serve CGI services using `mini_httpd(8)`.
    
    ... show                       : Show configuration.
    ... install                    : Download, build and install `mini_httpd(8)`.
    ... run          USER PORT DIR : Execute `mini_httpd`.
    ... create  NAME USER PORT DIR : Create service.
    ... enable  NAME               : Enable service.
    ... disable NAME               : Disable service.

minidav

    Usage: minidav ...
    
    Install `rclone` powered `webdav` service in `Void Linux`.
    
    create  NAME USER PORT DIRECTORY : Install dav service.
    enable  NAME                     : Enable dav service.
    disable NAME                     : Disable dav service
    manage  NAME                     : Open interactive manager.

hdav

    Usage: hdav ...
    
    Mount DAV filesystems as described in `/etc/hdav.csv` or
    ${HDAV_CONFIG} as "<DIR>,<URL>,<USER>,<PASS>".
    
    ... show           : Show configuration.
    ... install        : Install "davfs2" package.
    ... list|l         : List posible mounts.
    ... mount|m <DIR>  : Mount DAV remote directory.
    ... umount|u <DIR> : Unmount directory.

hvoid-wm

    Usage: hvoid-wm ...
    
    My window manager and terminal configuration for Void Linux and Xorg.
    
    Config files:
    
        /etc/xsetup.sh    : This is executed by `x-setup-screen`.
        ~/.background.png : Background image.
        /etc/xapplets.sh  : This is executed by `x-setup-applets`.
    
    Operations:
    
        xorg-server          : Install Xorg server, screen light managers.
        xorg-client          : Install Xorg client software.
        scripts              : Install all x-* scripts below.
        x-terminal-emulator  :
        x-refresh-background :
        x-setup-screen       :
        x-setup-applets      :
        i3-install           : Install I3.
        i3-xinit             : Configure ~/.xinitrc to run I3.

hvoid-audio

    Usage: hvoid-audio ...
    
    Configure and test Audio in a "Void Linux" box.
    
    ... install-pulse             : Install pulseaudio and enable bluetooth.
    ... direct-alsa-to-pulse      : Edit "/etc/asound.conf" to direct to pulse.
    ... enable-pulse              : Enable "pulseaudio" service
    ... allow-to-use-pulse [USER] : Add user to groups "pulse,pulse-access".
    
    ... enable-applet : Enable audio applet.
    ... test-audio    : Test installed audio programs.

hvoid-net

    Usage: hvoid-net ...
    
    Configure networking in a Void Linux box.
    
    ... all               : Install all below.
    ... bluetooth         : Install and enable "bluez" bluetooth service.
    ... network-manager   : Install "ConnMan" network manager.
    ... network-jail      : Install "firejail" network jail.
    ... network-sniffer-x : Install "wireshark" network sniffer.
    ... network-traffic   : Install "iptraf" network traffic monitor.

## Collaboration

For making bug reports, feature requests and donations visit one of the
following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

