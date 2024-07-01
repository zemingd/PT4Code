array = gets.chomp.split(" ").map(&:to_i)

if array.inject(:+) == 17 && array.inject(:*) == 175 
  puts "YES"
else
  puts "NO"
end