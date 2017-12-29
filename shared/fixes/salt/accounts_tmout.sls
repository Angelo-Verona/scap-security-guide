# platform = multi_platform_rhel,multi_platform_fedora
# reboot = false
# strategy = restrict
# complexity = low
# disruption = low
- (xccdf-var var_accounts_tmout)

Set Interactive Session Timeout:
  file.append:
    - name: /etc/profile.d/local.sh
    - text:
      - TMOUT=600
      - readonly TMOUT
