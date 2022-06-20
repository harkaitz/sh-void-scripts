# SH-VOID-SCRIPTS

Void Linux scripts for system administration.

## Dependencies

- [sh-hutil](https://github.com/harkaitz/sh-hutil) - Utility library for shell scripts.

## Help

setup-base

    Usage: setup-base SUBCOMMAND...
    
    Install base utilities and services I need for operating
    a server.
    
    ... show      : Show configuration.
    ... i-all     : All below.
    
    ... i-ssl     : Create ssl group.
    ... i-nonfree : Install nonfree repositories.
    ... i-logging : Install logging utilities.
    ... i-base    : Install base utilities and logging.
    ... i-shell   : Configure the shell.
    ... i-chrony  : Install and enable the *chrony* time daemon.

setup-haproxy-https

    Usage: setup-haproxy-https ...
    
    Configure a `HTTPS` proxy using `haproxy`. The service name generated
    is `https`.
    
    Supported operating systems: Void Linux.
    
    ... install                       : Install `haproxy`.
    ... list                          : List added redirections.
    ... add DOMAIN HOST[:PORT] [CERT] : Add https->http redirection.
    ... del DOMAIN                    : Delete domain.
    ... enable/status/disable/restart : Manage service.

setup-mpop

    Usage: setup-mpop ...
    
    Configure a `POP` mail client using `mpop` for receiving mails. For
    getting mails type `mpop -a` or `mpop ACCOUNTS...`.
    
    Options: user,pass,use_tls,host,tls_certcheck
    
    ... show               : Show system configuration.
    ... install            : Install mpop,mutt,w3m,xpdf,urlview.
    ... a-list             : List defined accounts.
    ... a-add NAME OPTS... : Add mpop account.
    ... a-del NAME...      : Delete mpop accounts.

setup-msmtp

    Usage: setup-msmtp ...
    
    Configure a `SMTP` mail client using `msmtp` for sending mails.
    
    Options: user,pass,host,port,use_starttls,use_tls,tls_certcheck
    
    ... show                    : Show system configuration.
    ... install                 : Install `msmtp`.
    ... a-list                  : List system accounts.
    ... a-add  NAME   OPTS...   : Add system accounts.
    ... a-test [NAME] [TO-ADDR] : Send a test mail (https://www.mail-tester.com/)
    ... a-test-mailx ...        : Send a test mail with mailx.
    ... a-del NAME...           : Delete accounts.
    ... d-get                   : Get default account.
    ... d-set ACCOUNT           : Set default account.
    ... m-set [USERNAME] EMAIL  : Set mapping in /etc/aliases.
    ... m-del USERNAME...       : Delete mapping from /etc/aliases.
    ... m-list                  : List mapping in /etc/aliases.

setup-popd

    Usage: setup-popd ...
    
    Configure a `POP` and `IMAP` mail retrieval service using `Dovecot`. Ports
    are 143 and 993.
    
    ... show           : Show system configuration.
    ... install/setup  : Install/configure `dovecot`.
    ... enable/disable : Manage `dovecot`.
    ... restart/status : Manage `dovecot`.

setup-scron

    Usage: setup-scron ...
    
    ... install-scron                 : Build/Install scron.
    ... add-service NAME USER TABFILE : Create new service. (Void Linux)
    ... add-service-user              : Create scron-USERNAME with ~/crontab.

setup-smtpd

    Usage: setup-smtpd ...
    
    Configure a `SMTP` mail server using `OpenSMTPD` and `rspamd`.
    
    Configuration files:
     __________________________  _____________________  ________________________
    | /etc/user2mail.cfg:      || /etc/mail2user.cfg: || SMTPD_DIR/domains.cfg |
    |                          || EMAIL1 USER         || DOMAIN1               |
    | USER EMAIL1[,EMAIL2,...] || EMAIL2 USER         || DOMAIN2               |
    |__________________________||_____________________||_______________________|
     ___________________________________________________
    | /etc/ssl/DOMAIN.cert                              |
    | /etc/ssl/DOMAIN.key                               |
    | /etc/ssl/DOMAIN.dkim-sel  : Contains the DKIM id. |
    | /etc/ssl/DKIM-ID.dkim-key                         |
    | /etc/ssl/DKIM-ID.dkim-pub                         |
    |___________________________________________________|
    
    Service names:
      - Void Linux : opensmtpd, rspamd
      - FreeBSD    : smtpd
    PAM files:
      - Void Linux : smtpd
      - FreeBSD    : smtpd
    Configuration files:
      - Void Linux : /etc/smtpd/smtpd.conf
                     /etc/rspamd/modules.d/dkim_signing.conf
      - FreeBSD    : /usr/local/etc/mail/smtpd.conf
                     /usr/local/etc/rspamd/modules.d/dkim_signing.conf
    
    Command line options:
    
    ... show              : Show system configuration.
    ... install           : Install `OpenSMTPD` and `rspamd`.
    ... setup INTFS...    : Setup `OpenSMTPD` and `rspamd`. (ie: lo eth0)
    ... domain-add DOMAIN : Configure to service a domain.
    ... domain-ls         : List serviced domains.
    ... enable            : Enable OpenSMTPD and rspamd services.
    ... restart           : Restart OpenSMTPD and rspamd  services.
    ... status            : Check the status of the OpenSMTPD and rspamd service.
    ... dns-record DOMAIN : Print DNS records for domain.

setup-socat-proxy

    Usage: setup-socat-proxy ...
    
    Configure proxies using `socat(1)`.
    
    ... add-tcp NAME PORT TO:PORT : Create service with simple TCP proxy.

setup-thttpd

    Usage: setup-thttpd ...
    
    Serve CGI services using `thttpd(8)` on HTTP.
    
    ... show                       : Show configuration.
    ... install                    : Download, build and install `thttpd(8)`.
    ... run          USER PORT DIR : Execute `thttpd`.
    ... create  NAME USER PORT DIR : Create service.

## Collaboration

For making bug reports, feature requests and donations visit
one of the following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

