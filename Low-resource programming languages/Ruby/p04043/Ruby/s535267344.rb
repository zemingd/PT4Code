# Your code here!

li = gets.chomp.split(" ").map(&:to_i)
if li.min == 5 && li.max == 7 && li.inject(:+) == 17
    puts "YES"
else
    puts "NO"
end