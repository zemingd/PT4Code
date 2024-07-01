N = gets.chomp.to_i
H = gets.chomp.split(" ").map(&:to_i)

max_cnt = 0
cnt = 0
prev_h = H.first

1.upto(N-1) do |i|
  if prev_h < H[i]
    max_cnt = cnt if cnt > max_cnt
    cnt = 0
  else
    cnt += 1
  end
  prev_h = H[i]
end
max_cnt = cnt if cnt > max_cnt
puts max_cnt
