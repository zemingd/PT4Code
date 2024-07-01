n = STDIN.gets.chomp.to_i
a = STDIN.gets.chomp.split(" ").map{|x| x.to_i}

max_cnt = 0
cnt = 0
for i in 0..(n-1) do
  while (a[i] & 1) == 0 do
    a[i] >>= 1
    cnt += 1
  end
  if cnt > max_cnt
    max_cnt = cnt
  end
end
puts max_cnt