#
# Cookbook:: mytomcatcookbook
# Recipe:: default
#
# Copyright:: 2023, The Authors, All Rights Reserved.

include_recipe 'mytomcatcookbook::myuser'
include_recipe 'mytomcatcookbook::installjava'
include_recipe 'mytomcatcookbook::downloadtom'
include_recipe 'mytomcatcookbook::permissions'
include_recipe 'mytomcatcookbook::tomdashboard'
include_recipe 'mytomcatcookbook::tomdstart'
include_recipe 'mytomcatcookbook::deployjavaapp'