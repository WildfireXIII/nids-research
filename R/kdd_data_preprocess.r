library("foreign")

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

col_names <- c("duration", "protocol_type", "service", "flag", "src_bytes", "dst_bytes", "land", "wrong_fragment", "urgent",
               "hot", "num_failed_logins", "logged_in", "num_compromised", "root_shell", "su_attempted", "num_root",
               "num_file_creations", "num_shells", "num_access_files", "num_outbound_cmds", "is_host_login", "is_guest_login",
               "count", "srv_count", "serror_rate", "srv_serror_rate", "rerror_rate", "srv_rerror_rate", "same_srv_rate", "diff_srv_rate", "srv_diff_host_rate",
               "dst_host_count", "dst_host_srv_count", "dst_host_same_srv_rate", "dst_host_diff_srv_rate",
               "dst_host_same_src_port_rate", "dst_host_srv_diff_host_rate", "dst_host_serror_rate",
               "dst_host_srv_serror_rate", "dst_host_rerror_rate", "dst_host_srv_rerror_rate", "target")

names(df) <- col_names

write.arff(df, "../data/raw/kddcup/kddcup.arff")
