n = gets.to_i
h = gets.chomp.split
n.times do |i|
    h[i] = h[i].to_i
end

count = 1
prev = h[0]
max = h[0]
(1..(n-1)).each do |i|
    count += 1 if max <= h[i] && prev <= h[i]
    max = h[i] if max < h[i]
    prev = h[i]
end

puts count