require 'prime'
x=gets.to_i
p Prime.each(x+10000).select{|e|e>=x}.min
