num = gets.chomp.split(" ").map(&:to_i)

if num[0] < num[1]
  puts "0"
else
  puts "10"
end
