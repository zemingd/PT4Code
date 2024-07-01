S = $stdin.gets.chomp.split(//)
max = 0
cnt = 0
is_prev_r = false
S.each do |s|
  if s == 'R'
    if is_prev_r
      cnt += 1
    else
      cnt = 1
    end
    if max < cnt
      max = cnt
    end
    is_prev_r = true
  else
    is_prev_r = false
    cnt = 0
  end
end
puts max
