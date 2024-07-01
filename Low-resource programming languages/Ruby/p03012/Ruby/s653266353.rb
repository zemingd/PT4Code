n = gets.to_i
w = gets.split.map(&:to_i)

su = w.inject(:+)
o = 0
mu = 1000
w.each do |i|
  o += i
  t = su - o
  if mu > (t-o).abs
    mu = (t-o).abs
  end

end

puts mu
