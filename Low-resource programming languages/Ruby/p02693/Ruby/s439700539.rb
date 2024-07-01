n = gets.to_i
a,b = gets.split.map(&:to_i)
ans='NG'
a.upto(b) do |i|
  ans = 'OK' if i % n == 0
end
puts ans
