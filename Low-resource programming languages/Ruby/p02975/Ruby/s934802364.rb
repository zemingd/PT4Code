n = gets.to_i
a = gets.split.map(&:to_i)
t = a.tally
size = t.size

if size == 1
  puts t[0] ? :Yes : :No
elsif size == 2
  puts t[0] == n / 3.0 ? :Yes : :No
elsif size == 3
  puts t.keys.inject(:^) == 0 && t.values.uniq.size == 1 ? :Yes : :No
else
  puts :No
end