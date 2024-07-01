input = gets.chomp.split(" ")[0].to_i
arr = []
input.times do
    arr.push(gets.chomp)
end
puts arr.sort.join
