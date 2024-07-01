require 'prime'

base = gets.to_i
ans = Prime.find {|p| p >= base }
puts ans