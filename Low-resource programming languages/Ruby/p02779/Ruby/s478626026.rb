n = gets.to_i

numbers = gets.split(" ")

if numbers.length == numbers.uniq.length
  puts "YES"
else
  puts "NO"
end
