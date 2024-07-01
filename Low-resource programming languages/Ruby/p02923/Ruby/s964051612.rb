n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)
cnt = 0
cnt_l = []
(n-1).times do |i|
  if h[i] < h[i+1] then
    cnt_l << cnt
    cnt = 0
  else
    cnt += 1
  end
end
cnt_l << cnt
puts cnt_l.max
