# https://atcoder.jp/contests/abc106/tasks/abc106_c

s = gets.chomp.split('')
k = gets.to_i

sub = s[0..k-1]
if sub.uniq == ['1']
  puts 1
else
  puts s.find { |i| i != '1'}
end