X = gets.to_i
c = 100
n = (1 .. 100000).find do |i|
  c = (c * 1.01).to_i
  c >= X
end
puts n