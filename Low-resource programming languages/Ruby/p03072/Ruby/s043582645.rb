N = gets.to_i
H = gets.split(' ').map(&:to_i)
count = 1
max = H[0]

(1..H.length - 1).each do |i|
  if max <= H[i] && H[i] >= H[i - 1]
    count += 1
    max = H[i]
  end
end

puts count