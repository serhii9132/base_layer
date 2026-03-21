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

## [1.0.4] - 2026-02-11

### Changed
- iptables role: Refactor code

## [1.0.5] - 2026-02-27

### Added:
- Molecule tests
- iptables: added a task to allow loopback traffic

### Changed
- utilities role: Refactor code
- common role: Refactor code

## [1.0.6] - 2026-03-08

### Changed
- ssh role: Refactor code

## [1.0.7] - 2026-03-12

### Changed
- ssh role: Refactor code
- Molecule: switch to dynamic OS provisioning with DHCP and env variables

## [1.0.8] - 2026-03-21

### Added
- iptables role: limits to the user-defined logging chain
- fail2ban role: ban parameters