N = gets.to_i
S = N.times.map { gets.chomp }
table = Hash.new { 0 }
S.each do |s|
  table[s] += 1
end
max = table.values.max
filtered = []
table.each do |s, c|
  if c == max
    filtered.push(s)
  end
end
filtered.sort!
filtered.each do |s|
  puts s
end