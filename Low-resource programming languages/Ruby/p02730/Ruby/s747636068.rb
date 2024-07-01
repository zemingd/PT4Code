# frozen_string_literal: true

s = gets.chomp.split('')
n = s.size
a = []
check = 0

(n/2).times do |i|
  check += 1 if s[i] == s[-(i+1)]
end
if check != (n / 2)
  puts :No
  exit
end
(0...(n-1)/2).each do |i|
  a << s[i]
end
check = 0
(a.size / 2).times do |i|
  check += 1 if a[i] == a[a.size - 1 - i]
end
if check != a.size / 2
  puts :No
  exit
end

b = []
(((n + 3) / 2 - 1)...n).each do |i|
  b << s[i]
end
check = 0
(b.size / 2).times do |i|
  check += 1 if b[i] == b[b.size - 1 - i]
end
if check != b.size / 2
  puts :No
  exit
end
puts :Yes
