n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

max = 0
count = 0
(n-1).times do |i|
  if h[i] >= h[i+1]
    count += 1
  else
    count = 0
  end
  max = count if max < count
end

puts(max)