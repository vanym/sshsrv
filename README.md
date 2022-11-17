# sshsrv

`sshsrv` and `tcpsrvconnect` are bash scripts that uses
dig and netcat (`nc`) to make TCP connection by DNS SRV records

## Usage

The best way of use is to put `ProxyCommand` to target host
in your openssh client config file and use `ssh` command

```
Host ssh.example.com
    ProxyCommand tcpsrvconnect _ssh %h %p
    ProxyUseFdpass yes # put only if your netcat supports fdpass
```

Or you can use `sshsrv` command that just pass these options

By default `tcpsrvconnect` will not try to connect without SRV records,
to change this behavior use `--try-default-first` (`-T`), `--try-default-last` (`-t`) options of `tcpsrvconnect`

```
ProxyCommand tcpsrvconnect -t _ssh %h %p
```

To use specific DNS server you can pass it to dig using `--dig-args "@8.8.8.8"`

Use `tcpsrvconnect --help` to see all available options

## Installation

```
git clone https://github.com/vanym/sshsrv.git
cd sshsrv
sudo make install
```
