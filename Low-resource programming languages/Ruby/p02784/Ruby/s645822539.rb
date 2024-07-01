h, n = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)

if array.inject(:+) >= h
    puts "Yes"
else
    puts "No"
end
