n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(10**5+1, 0)
a.each do |i|
  b[i] += 1
end
ret = 0
b.each_cons(3) do |v1, v2, v3|
  ret = [ret, v1 + v2 + v3].max
end
puts ret