a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

ans = 1000
[a, b, c, d, e].permutation do |p|
  last = 0
  p.each_with_index do |t, i|
    if i == 4
      last += t
    else
      last += (t + 9) / 10 * 10
    end
  end
  ans = [ans, last].min
end
puts ans
