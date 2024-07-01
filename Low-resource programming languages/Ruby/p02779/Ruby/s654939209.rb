x = gets.to_i
num = gets.chomp.split(" ").map(&:to_i)
num2 = num.uniq

if num.length == num2.length
  puts "YES"
else
  puts "NO"
end
