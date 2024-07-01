N = gets.chop.to_i

m = Math.sqrt(N).to_i
max = N.to_s.size
(1..m).each do |i|
  if N % i == 0
    max = [max, [i.to_s.size, (N / i).to_s.size].max].min
  end
end
puts max