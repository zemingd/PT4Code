n = gets.to_i
h = gets.split.map(&:to_i)
 
count = 1
max = h[0]

(1..n-1).each do |i|
  if max <= h[i]
    count += 1
    max = h[i]
  end
end
puts count