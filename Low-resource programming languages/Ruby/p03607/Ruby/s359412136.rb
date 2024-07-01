a = Hash.new(0)
n = gets.to_i
n.times do
    k = gets.to_i
    a[k] += 1
end
a = a.to_a
cnt = 0
(0..a.length - 1).each  do |i|
    if a[i][1] % 2 != 0
    cnt += 1
    end
end
puts cnt
