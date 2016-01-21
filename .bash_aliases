# keep path unchanged when using sudo
# (http://stackoverflow.com/questions/257616/sudo-changes-path-why)
alias sudo='sudo env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH'
