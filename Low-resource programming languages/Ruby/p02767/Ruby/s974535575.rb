n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)
ans = []

(x.min..x.max).each do |i|
  tmp = 0
  n.times do |j|
    tmp += (x[j] - i) ** 2
  end
  ans.push(tmp)
end 
 
puts ans.min
  