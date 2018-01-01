#!/bin/bash
#------------------------------------------------------------------------------
# Create InsertResult JSON
#------------------------------------------------------------------------------
#  This script creates an InsertResult request encoded as JSON using string
#  concatenation. The current timestamp is created automatically. The
#  resulting JSON is returned on STDOUT.
#
# Parameters ------------------------------------------------------------------
#  $1 template identifier : The identifier used in the InsertResultTemplate
#                           request to identify the ResultTemplate.
#  $2 value               : The sensor observation value (e.g. temperature).
#
# Usage -----------------------------------------------------------------------
#  Call the script with a "template name" and "sensor reading" as parameter.
#  The reulting JSON is returned on STDOUT.
#  Example:
#  $ ./insertResultTimestamp.sh IamTheTemplateName 10.3
#  or
#  $ ./insertResultTimestamp.sh "IamTheTemplateName" "10.3"
#------------------------------------------------------------------------------
 
# Timestamp, e.g.: 2017-07-12T15:53:55+02:00
timestamp=`date +%Y-%m-%dT%H:%M:%S%:z`  
 
# String tokens of the JSON request
strsep=','
stra='{"request": "InsertResult","service": "SOS","version": "2.0.0","templateIdentifier": "'
strb='","resultValues": "'
strc='"}'
 
# Concatenate JSON tokens and parameters
json="${stra}${1}${strb}${timestamp}${strsep}${2}${strc}"
 
# Echo JSON on STDOUT
echo "${json}"