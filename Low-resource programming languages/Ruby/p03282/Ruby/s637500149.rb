# https://atcoder.jp/contests/abc106/tasks/abc106_c

s = gets.chomp.split('')
k = gets.to_i

if s[0] == '1' && k > 1
  puts s.find { |i| i > 1 }
else
  puts s[0]
end