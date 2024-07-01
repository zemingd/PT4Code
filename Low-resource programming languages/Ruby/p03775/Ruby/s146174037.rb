n = gets.to_i

m = Math.sqrt(n).to_i
max = n.to_s.size
max = 0
(1..m).each do |i|
  if n%i == 0
    max = [max,[i.to_s.size, (n / i).to_s.size].max].min
  end
end
puts max