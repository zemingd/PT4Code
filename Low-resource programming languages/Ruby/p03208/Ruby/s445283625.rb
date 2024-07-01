n,k = gets.split.map(&:to_i)
h = n.times.map{gets.to_i}.sort.reverse

ans = 10**10
k.times do |i|
  ans = [ans, h[i]-h[k+i-1]].min
end

puts ans