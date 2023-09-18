# ConSsh - An Ssh Connections manager

A simple command-line manager for frequently used SSH commands.

Save SSH targets to a file

`conssh --save "user@host1:8022"`
`conssh --save "user@host2 ls -l # list"

Connect by choosing a target by name

`conssh host1`

Connect by choosing a target by comment

`conssh list`

Connect and run a command

`conssh host1 -x 'df -h'`

Ignore host key fingerprint checking

`conssh host1 -I`

```
usage: conssh [-h] [--copy-id] [--cp] [--edit] [--save SAVE]
              [--ignore-fingerprints] [--execute COMMAND]
              [select ...]

positional arguments:
  select                Select unique entry matching this value

options:
  -h, --help            show this help message and exit
  --copy-id, -D         Copy SSH ID to server
  --cp, -C              Copy files
  --edit, -E            Edit the server database file
  --save SAVE           Store ssh command
  --ignore-fingerprints, -I
                        Ignore fingerprints
  --execute COMMAND, -x COMMAND
                        Command/file names
```
