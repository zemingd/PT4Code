n = gets
ary = gets.split
if ary.uniq!.size == 3
  puts "Three"
else
  puts "Four"
end