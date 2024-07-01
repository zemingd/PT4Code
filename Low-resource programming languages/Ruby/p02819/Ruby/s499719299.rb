require 'prime'
x=gets.to_i
p Prime.each{|q| break q if q>=x }