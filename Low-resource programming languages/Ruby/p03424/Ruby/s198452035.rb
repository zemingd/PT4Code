require 'pp'

n = gets.chomp!.to_i
s_n = gets.chomp!.split(" ")

puts s_n.group_by {|s| s }.length == 4 ? 'Four' : 'Three'
