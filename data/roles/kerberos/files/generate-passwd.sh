#!/bin/expect

spawn kdb5_ldap_util -D cn=admin,dc=example,dc=com -w changeme123 stashsrvpw -f /etc/krb5.ldap cn=admin,dc=example,dc=com
expect "Password for \"cn=admin,dc=example,dc=com\": "
send "changeme123\r"
expect "Re-enter password for \"cn=admin,dc=example,dc=com\": "
send "changeme123\r"
expect eof
