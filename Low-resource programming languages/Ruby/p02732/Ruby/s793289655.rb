N = gets.to_i
A = gets.split.map(&:to_i)

arr = Array.new(N+1,0)

A.each do |n|
    arr[n] += 1
end

com_arr = Array.new(N+1, 0)

arr.each_with_index do |n,i|
    com_arr[i] = (1..n).to_a.combination(2).to_a.size
end

sum = com_arr.inject(:+)

A.each do |n|
    puts sum - (arr[n] - 1)
end