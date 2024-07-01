require 'prime'

a = gets.to_i

num = Prime.find{|p| p >=  a}

puts num