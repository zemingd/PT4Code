# coding: utf-8
s = gets().chomp!
t = gets().chomp!
ans = 0
s.chars.each_with_index do |e, i|
  ans += 1 if e.eql? t[i]
end

puts ans

