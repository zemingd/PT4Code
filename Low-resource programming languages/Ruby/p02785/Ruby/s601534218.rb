h, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
array = array.sort!.reverse!

if array.size <= k
    puts 0
else
    array = array[k..-1]
    puts array.inject(:+)
end
