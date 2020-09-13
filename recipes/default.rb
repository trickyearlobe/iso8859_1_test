#
# Cookbook:: iso8859_1_test
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

template "/tmp/iso8859-1.txt" do
  source "iso8859-1.txt.erb"
end