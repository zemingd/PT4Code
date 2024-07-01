N = gets.strip.to_i
P = gets.strip.split(' ').map(&:to_i)
count = N
(1..N).reverse_each do |i|
  (0..(i-2)).reverse_each do |j|
    if P[i-1] > P[j]
      count -= 1
      break
    end
  end
end
puts count