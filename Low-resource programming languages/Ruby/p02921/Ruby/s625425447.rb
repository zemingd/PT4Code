S=gets.chomp.chars
T=gets.chomp.chars


ary = S.zip T

puts ary.count{|attr| attr.first == attr.last}