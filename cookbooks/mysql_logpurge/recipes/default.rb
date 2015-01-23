#
# Cookbook Name:: mysql_logpurge
# Recipe:: default
#

cron "binary_log_purge" do
  minute  '0'
  hour    '*/2'
  day     '*'
  month   '*'
  weekday '*'
  command '/engineyard/bin/binary_log_purge -q'
end