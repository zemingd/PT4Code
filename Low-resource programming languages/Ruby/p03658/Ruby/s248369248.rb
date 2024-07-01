N,K = gets.split("\s").map {|s|s.to_i}
data = gets.split("\s").map {|s|s.to_i}
data.sort!
s = 0
K.times do |i|
  s += data[N-1-i]
end
p s