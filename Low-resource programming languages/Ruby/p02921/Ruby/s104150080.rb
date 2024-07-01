require 'pp'
s = gets.chomp.split(//)
t = gets.chomp.split(//)

cnt = 0
3.times do |i|
  cnt += 1 if s[i] == t[i]
end
p cnt
