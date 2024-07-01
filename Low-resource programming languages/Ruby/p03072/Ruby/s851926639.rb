N = gets.to_i
H = gets.split.map(&:to_i)

max = H[0]
cnt = 1
(N-1).times do |i|
  if max <= H[i+1]
    max = H[i+1]
    cnt += 1
  end
end

puts cnt