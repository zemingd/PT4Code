n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)
array_num = []

array.each.with_index(1) do |a, b|
    array_num << [b, a]
end

array_num = array_num.sort {|a,b| a[1] <=> b[1]}
ans = []

n.times do |i|
    ans << array_num[i][0]
end

puts ans.join(' ')
