#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'ntp'
package 'ntpdate'

template '/etc/ntp.conf' do
	source "ntp.erb"
	owner "root"
	group "root"
	mode "0644"	
end
