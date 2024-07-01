n = gets.to_i
a_array=gets.chomp.split(" ").map(&:to_i)
b_array=gets.chomp.split(" ").map(&:to_i)
c_array=gets.chomp.split(" ").map(&:to_i)

ret = 0
(0...n).each do |i|
    r = a_array[i] - 1
    ret += b_array[r]
    if i > 0 && a_array[i] == a_array[i-1] + 1
        ret += c_array[r-1]
    end
end

puts ret