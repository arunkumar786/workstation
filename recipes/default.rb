#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# <include_recipe> syntax will call other recipe in# same or other cookbook. Note that we have recipe # as of now we are calling recipe in the same cookb# ook.

include_recipe 'workstation::setup'
# include_recipe 'apache::server'
