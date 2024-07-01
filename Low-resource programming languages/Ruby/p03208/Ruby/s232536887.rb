n, k = gets.chomp.split(" ").map(&:to_i)
arr = []
n.times do |i|
    h = gets.chomp.to_i
    arr << h
end
ans = 10000000000
arr = arr.sort
arr.each_cons(k) do |j|
    sa = j.sort.max - j.sort.min
    ans = [ans,sa].min
end
puts ans