N, M = gets.split.map(&:to_i)
lr_list = M.times.map { gets.split.map(&:to_i) }
max_l = -1
min_r = N + 1
lr_list.each do |(l, r)|
  max_l = l if l > max_l
  min_r = r if r < min_r
end
diff = min_r - max_l
ans = if diff >= 0
  diff + 1
  else
    0
  end
puts ans
