require 'prime'

X = gets.to_i
puts Prime.each.find {|n| X <= n }
