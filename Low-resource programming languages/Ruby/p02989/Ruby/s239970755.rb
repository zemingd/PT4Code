n = gets.chop.to_i

d = gets.chop.split.map(&:to_i)

d.sort!

harf_index = n/2

if d[harf_index] == d[harf_index-1]
  puts 0
else
  puts d[harf_index] - d[harf_index-1]
end
