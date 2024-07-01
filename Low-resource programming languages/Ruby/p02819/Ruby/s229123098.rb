require 'prime'
n = gets.chomp.to_i
puts Prime.to_a(10**6).select{|elem| elem>=n}[0]
