n, x = gets.chomp.split(" ").map(&:to_i)
ans = x
arr = []
n.times do |i|
    m = gets.chomp.to_i
    arr << m
    ans -= m
end
arr = arr.sort
puts n + ans / arr[0]
