N = gets.to_i
H = gets.split.map(&:to_i)

max = 0
cnt = 0
(N-1).times do |i|
  if H[i] < H[i+1]
    max = [cnt, max].max
    cnt = 0
  else
    cnt += 1
  end
end
puts [cnt, max].max
