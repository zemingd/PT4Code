# frozen_string_literal: true

s = gets.chomp
n = s.size
ss = s[0..((n - 1)/2 - 1)]

sss = s[((n + 3)/2 - 1)..-1]

if s == s.reverse && ss == ss.reverse && sss == sss.reverse
  puts 'Yes'
else
  puts 'No'
end
