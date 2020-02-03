# docker-mailserver
Mailserver:  
 * __Postfix__ and __Dovecot__ and draft configuration.  
 * Docker build, run and exec (_build.sh_, _docker-run.sh_ and _docker-exec.sh_).  
 * Docker compose up (_docker-compose-run.sh_) - require _build.sh_. Note: this is not working, container got exit(0) after attack mailserver.  

The goal aims to create a sample mailserver that can be contained at a docker container.

Next steps:
 * Understand why docker-compose got exit(0)  
 * Tune postfix and dovecot configuration.
