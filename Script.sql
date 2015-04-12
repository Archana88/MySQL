# This script demonstrate how to call a SQL script from a URI.
#
# Format of the MySQL URI:
#   mysql://username:passwd@yourserver.com/objects/
#
# This URI opens MySQL-Front.exe and tries to identify the existing
# session to:
# Server: yourserver.com
# User: username
# Password: passwd
#
#
# Possible options:  
#   mysql://username:passwd@yourserver.com/editor/?file=C:\Script.sql
#
# This opens the file "C:\Script.sql" in the SQL Editor
#
#
#   mysql://username:passwd@yourserver.com/editor/?file=C:\Script.sql&execute
#
# This opens AND executes the file "C:\Script.sql"
#

SELECT VERSION();