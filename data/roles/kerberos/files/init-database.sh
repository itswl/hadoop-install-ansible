#!/bin/expect

spawn kdb5_ldap_util -D cn=admin,dc=example,dc=com -w changeme123 -H ldap:/// create -r EXAMPLE.COM -s
expect "Enter KDC database master key: "
send "changeme123\r"
expect "Re-enter KDC database master key to verify:"
send "changeme123\r"
expect eof
