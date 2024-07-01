n = gets.to_i
cnts = [0] * (n+1)
(1..n).step do |i|
  i.step(n, i) { |k| cnts[k] += 1 }
end
p 1.step(n, 2).map{|i|cnts[i]}.count(8)