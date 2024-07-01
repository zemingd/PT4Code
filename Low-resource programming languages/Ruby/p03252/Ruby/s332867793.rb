s = gets.chomp
t = gets.chomp
shash = Hash.new { |h, k| h[k] = [] }
thash = Hash.new { |h, k| h[k] = [] }
s.size.times do |i|
  shash[s[i]] << i
  thash[t[i]] << i
end

puts shash.values == thash.values ? "Yes" : "No"
