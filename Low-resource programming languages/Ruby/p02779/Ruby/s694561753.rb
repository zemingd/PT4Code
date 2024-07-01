n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
 
if ary.size == ary.uniq.size
  puts "YES"
else
  puts "NO"
end