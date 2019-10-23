# Whitelist Values of Variable

## Description

List of authorized values from a defined variable, return true if the value is present or false if the value isn't present.

## Exemple

You want to trigger tags only on some domains without having to make a long and unreadable domain name regex. You can easily built a list of authorized Hostname.

Created a variable "Whitelist Values Of Variable"

In the variable Input, selected {{Page Hostname}}

In the value listing table, enter your hostnames to authorize :

| List of domain | Return value (boolean) |
| ------------- | ------------- |
| domain-1.staging.com  | true  |
| domaine-1.live.com  | true  |

Configure the trigger of a Google Analytics Page View Tag and apply a condition "true" based on the "Whitelist Values Of Variable" variable.

The tag will be trigger only on Whitelist hostnames renseigned
