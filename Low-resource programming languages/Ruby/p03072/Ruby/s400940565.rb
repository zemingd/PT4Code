n = gets.to_i
h = gets.split.map(&:to_i)
 
count = 1
(1..n-1).each do |i|
  if h[0] <= h[i] && h[i-1] <= h[i]
    count += 1
  end
end
puts count