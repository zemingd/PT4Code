N, M = gets.chomp.split(" ").map(&:to_i)
arry = gets.chomp.split(" ").map(&:to_i)
sum = arry.sum
one_of_four = sum/(4*M)

count = []
arry.each do |num| 
    if num>=one_of_four 
        count.push(num)
    end
end

puts count.length >= M ? "Yes" : "No"