arr = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
(0...k).each do |e|
    arr[arr.index(arr.max)] *= 2
end

puts arr.inject(:+)