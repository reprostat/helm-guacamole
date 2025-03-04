# Apache Guacamole Helm Chart

## Description

This version is based on the [Helm chart](https://github.com/lsc-sde/iac-helm-guacamole) developped by the [Lancashire and South Cumbria Secure Data Environment](https://github.com/lsc-sde) group.
The major modifications are:
- removal of the client as it is typically deployed independently
- implementing LDAP authentication and configuration management

## Deployement

### Prerequisites

Secret with name corresponding to [bindSecret](https://github.com/reprostat/helm-guacamole/blob/b80708648ce7a3dbcea491310b4748158639d358/values.yaml#L37) 
and keys corresponding to specific [LDAP environmental variables](https://guacamole.apache.org/doc/gug/guacamole-docker.html#guacamole-docker-ldap-required-vars)
 - _LDAP_bindDN_: corresponds to `LDAP_SEARCH_BIND_DN`
 - _LDAP_bindPW_: corresponds to `LDAP_SEARCH_BIND_PASSWORD`
