n = gets.to_i
as = gets.chomp.split.map(&:to_i)
if as.size == as.uniq.size
  puts "YES"
else
  puts "NO"
end