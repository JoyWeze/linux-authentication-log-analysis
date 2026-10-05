# Linux Authentication Log Analysis

## Overview

My first  hands-on cybersecurity project focused on analysing Linux
authentication and privilege-related events using systemd-journald and then  saving the relevant events into
 authentication-events.log for analysis.

The project demonstrates how command-line tools can be used to
identify authentication failures, investigate sudo activity, and
document security-relevant findings.

## Objectives

- Analyse Linux authentication events
- Identify failed authentication
- Investigate privileged sudo activity
- Examine root sessions
- Distinguish normal session activity from events requiring review
- Automate basic log analysis using Bash
- Document findings in an incident report

## Environment

- Kali Linux
- systemd-journald

## Tools

- journalctl
- grep
- awk
- sort
- uniq
- Bash

## Methodology

1. Retrieved authentication-related events from the system journal.
2. Created a filtered dataset for analysis called authentication-event.log
3. Identified authentication failures.
4. Investigated sudo activity.
5. Examined root sessions.
6. Analysed normal session activity.
7. Created a Bash script to automate the analysis.
8. Documented the findings and security recommendations.

## Key Finding

Two sudo authentication failure events involving the local
`nene26` account were identified in the dataset.

The investigation also identified privileged commands and normal
system session activity.

The evidence was analysed in context rather than automatically
classified as malicious.

## Project Structure

Linux-authentication-log-analysis/
- README.md
- logs/
- - authentication-events.log
- analysis/
- - analyze_auth.sh
- - analysis-output.txt
- - authentication-failures.txt
- - sudo-events.txt
- - sudo-commands.txt
- - root-sessions.txt
- - sessions-openings.txt
- - sessions-closures.txt
- findings/
- - incident-report.md

