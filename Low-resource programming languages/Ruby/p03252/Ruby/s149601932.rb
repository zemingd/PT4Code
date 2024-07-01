s = gets.chomp.chars
t = gets.chomp.chars

s_hash = Hash.new{[]}
s.each_with_index do |l, idx|
  s_hash[l] += [idx]
end

t_hash = Hash.new{[]}
t.each_with_index do |l, idx|
  t_hash[l] += [idx]
end

if s_hash.values == t_hash.values
  puts "Yes"
else
  puts "No"
end