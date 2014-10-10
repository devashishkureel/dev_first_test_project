#
# Cookbook Name:: users
# Recipe:: default
#
# Copyright 2009-2012, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Empty default recipe for including LWRPs.

 user 'michael' do
  home "/home/michael"
  shell "/bin/bash"
  supports :manage_home => true
  password "$1$VAl811MJ$x2I.q/NgoTdE5WXCJfdnQ0"
  action :create
end

user 'elvisit' do
  home "/home/elvisit"
  shell "/bin/bash"
  supports :manage_home => true
  password "$1$Go63l6Yh$gArI2P.svKVN388YX/lNH0"
  action :create
end

user 'elvisqa' do
  home "/home/elvisqa"
  shell "/bin/bash"
  supports :manage_home => true
  password "$1$Go63l6Yh$gArI2P.svKVN388YX/lNH0"
  action :create
end
user 'tony' do
  home "/home/tony"
  shell "/bin/bash"
  supports :manage_home => true
  password "$1$Go63l6Yh$gArI2P.svKVN388YX/lNH0"
  action :create
end
 user 'sanjay' do
  home "/home/sanjay"
  shell "/bin/bash"
  supports :manage_home => true
  password "$1$Go63l6Yh$gArI2P.svKVN388YX/lNH0"
  action :create
end

