df <- read.csv("../data/raw/kddcup/kddcup.data", head=F)

# check types
#sapply(df, typeof)
str(df)

# turn symbolic cols into symbolic
# df$V2 <- as.factor(df$V2)
# (not needed)

# back,buffer_overflow,ftp_write,guess_passwd,imap,ipsweep,land,loadmodule,multihop,neptune,nmap,normal,perl,phf,pod,portsweep,rootkit,satan,smurf,spy,teardrop,warezclient,warezmaster.
# duration: continuous.
# protocol_type: symbolic.
# service: symbolic.
# flag: symbolic.
# src_bytes: continuous.
# dst_bytes: continuous.
# land: symbolic.
# wrong_fragment: continuous.
# urgent: continuous.
# hot: continuous.
# num_failed_logins: continuous.
# logged_in: symbolic.
# num_compromised: continuous.
# root_shell: continuous.
# su_attempted: continuous.
# num_root: continuous.
# num_file_creations: continuous.
# num_shells: continuous.
# num_access_files: continuous.
# num_outbound_cmds: continuous.
# is_host_login: symbolic.
# is_guest_login: symbolic.
# count: continuous.
# srv_count: continuous.
# serror_rate: continuous.
# srv_serror_rate: continuous.
# rerror_rate: continuous.
# srv_rerror_rate: continuous.
# same_srv_rate: continuous.
# diff_srv_rate: continuous.
# srv_diff_host_rate: continuous.
# dst_host_count: continuous.
# dst_host_srv_count: continuous.
# dst_host_same_srv_rate: continuous.
# dst_host_diff_srv_rate: continuous.
# dst_host_same_src_port_rate: continuous.
# dst_host_srv_diff_host_rate: continuous.
# dst_host_serror_rate: continuous.
# dst_host_srv_serror_rate: continuous.
# dst_host_rerror_rate: continuous.
# dst_host_srv_rerror_rate: continuous.
