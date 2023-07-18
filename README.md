# ConSsh - An Ssh Connections manager

A simple command-line manager for frequently used SSH commands.

Save SSH targets to a file

`conssh --save "user@host1:8022"`
`conssh --save "user@host2 ls -l # list"

Connect by choosing a target by name

`conssh -S host1`

Connect by choosing a target by comment

`conssh -S list`

Connect and run a command

`conssh -S host1 'df -h'`

Ignore host key fingerprint checking

`conssh -S host1 -I`

```
usage: conssh [-h] [--copy-id] [--cp] [--edit] [--save SAVE] [--select SELECT]
              [--ignore-fingerprints]
              [command ...]

positional arguments:
  command               Command/file names

options:
  -h, --help            show this help message and exit
  --copy-id, -D         Copy SSH ID to server
  --cp, -C              Copy files
  --edit, -E            Edit the server database file
  --save SAVE           Store ssh command
  --select SELECT, -S SELECT
                        Select unique entry matching this value
  --ignore-fingerprints, -I
                        Ignore fingerprints
```
