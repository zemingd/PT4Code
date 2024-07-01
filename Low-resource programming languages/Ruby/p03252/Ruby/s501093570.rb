s = gets.chomp
t = gets.chomp
shash = {}
thash = {}
s.size.times do |i|
  shash[s[i]] = i
  thash[t[i]] = i
end

puts shash.values == thash.values ? "Yes" : "No"