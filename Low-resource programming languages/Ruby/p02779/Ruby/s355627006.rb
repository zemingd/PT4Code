n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i).uniq

if ary.size == 1
  puts "YES"
else
  puts "NO"
end