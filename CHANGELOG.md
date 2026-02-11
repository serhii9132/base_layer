# CHANGELOG.md

## [1.0.0] - 2025-11-11
First stable release of the collection.

## [1.0.1] - 2025-11-24

### Changed
- common role: Renamed 00-common-aliases.sh to common-aliases.sh
- users role: Added single task for removing stock users

## [1.0.2] - 2025-12-22

### Added:
- hostname role

### Changed
- common role: Splited the common-aliases.sh script

## [1.0.3] - 2026-02-11

### Added:
- fail2ban role
- accounts role
- iptables role
- utilities role

### Changed
- hostname role: Refactor code
- timeshift role: Added the /var/lib/jenkins/ and /etc/wireguard/ directories to the exclusion list
- motd role: Renamed 20-sysinfo to sysinfo
- ssh role: Renamed sshd-custom.j2 to sshd.conf.j2. Refactor code
- common role: Refactor code

### Removed
- net_security role
- users role
- packages role