n = $stdin.gets.to_i
h = $stdin.gets.split.map(&:to_i)
result = 0
max = h[0]
(1..n-1).each do |i|
  max = [h[i],max].max
  if max<=h[i]
    result +=1
  end
end

puts result+1