s = gets.chomp
t = gets.chomp
f = {}
inv = {}

s.size.times do |i|
  f[s[i]] ||= t[i]
  inv[t[i]] ||= s[i]

  next if f[s[i]] == t[i] && inv[t[i]] == s[i]

  puts :No
  exit
end

puts :Yes