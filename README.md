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

## Collaboration

For making bug reports, feature requests and donations visit one of the
following links:

1. [gemini://harkadev.com/oss/](gemini://harkadev.com/oss/)
2. [https://harkadev.com/oss/](https://harkadev.com/oss/)

