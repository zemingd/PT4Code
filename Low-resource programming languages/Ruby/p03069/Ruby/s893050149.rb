n = gets.to_i
s = gets.chomp.chars
ans = 1e10
cnt_w = []
cnt_b = []
cnt = 0
s.each do |c|
  if c == "#"
    cnt += 1
  end
  cnt_b << cnt
end
cnt  = 0
s.each do |c|
  if c == "."
    cnt += 1
  end
  cnt_w << cnt
end
ans = 0 if s.all?{|c| c == "#"}
(0..n-1).each do |i|
  ans = [cnt_b[i] + cnt_w[n-1] - cnt_w[i],ans].min
end
puts [ans,cnt_w].min