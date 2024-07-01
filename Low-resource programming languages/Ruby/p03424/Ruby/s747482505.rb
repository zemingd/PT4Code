n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_s)
 
if ary.uniq.size == 3
  puts "Three"
else
  puts "Four"
end