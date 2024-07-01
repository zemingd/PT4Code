n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)

result = 0
hightest = array[0]

array.each do |x|
    if hightest <= x
        result += 1
        hightest = x
    end
end

puts result
