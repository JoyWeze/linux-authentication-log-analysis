## Linux Authentication Log Investigation

## 1. Overview

This project investigates authentication and privilege-related
events recorded in a Kali Linux system using systemd-journald.

The investigation focused on authentication failures, sudo activity,
root sessions, and user session activity.

## 2. Objective

The objective was to use Linux command-line tools to identify and
interpret security-relevant authentication events and distinguish
normal system activity from events requiring further investigation.

## 3. Log Source

The system does not use the traditional `/var/log/auth.log` file.

Authentication-related events were retrieved from the systemd journal
using `journalctl`.

A filtered copy of relevant events was saved as:

`logs/authentication-events.log`

## 4. Tools Used

- Kali Linux
- Oracle Virtual Box Manager
- systemd-journald
- journalctl
- grep
- sort
- uniq
- Bash
- tee
- nano
- pipes

## 5. Investigation Findings

### Authentication Failures

Two authentication failure events were identified.

Both events involved the local account `nene26`.

The events occurred on September 28, 2026, at approximately:

- 19:28:58
- 19:32:18

### Sudo Activity

The logs contained sudo activity showing the `nene26` account
executing commands with root privileges.

Examples included package management, editing system configuration,
and journal investigation commands.

### Root Sessions

Root session activity was identified in the collected journal events.

### Normal Session Activity

The dataset also contained normal session activity associated with
LightDM, systemd user sessions, and scheduled cron tasks.

## 6. Security Interpretation

The two authentication failures demonstrate that unsuccessful
authentication attempts are recorded by the Linux authentication
framework and can be investigated through the system journal.

The available evidence does not by itself establish that these
events represented malicious activity. They involved the local
`nene26` account and occurred during activity within the controlled
lab environment.

The investigation demonstrates how I can use authentication
logs to identify failed authentication, investigate privileged
activity, and establish the surrounding context of an event.

## 7. Recommendations

- Monitor repeated authentication failures.
- Review privileged sudo activity regularly.
- Use strong authentication credentials.
- Restrict unnecessary administrative privileges.
- Review authentication logs when unusual activity is detected.
- Maintain centralized logging where appropriate.

## 8. Lessons Learned

This project provided practical experience using systemd journal
logs to investigate Linux authentication activity.

I learned how to:

- retrieve authentication events using journalctl;
- filter security-relevant events with grep;
- identify failed authentication;
- investigate sudo and root activity;
- automate basic log analysis with Bash; and
- document security findings based on available evidence.
- practical usage of linux commands

##Signed - JOY WEZE -
