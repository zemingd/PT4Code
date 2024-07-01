S=gets.chomp.chars
RRR
T=gets.chomp.chars
SSS


ary = S.zip T

puts ary.count{|attr| attr.first == attr.last}