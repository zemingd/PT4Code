s = gets.chomp

max_cnt = 0
cnt = 0
s.chars.each do |c|
  if %[A C G T].include?(c)
    cnt += 1
  else
    max_cnt = [max_cnt, cnt].max
    cnt = 0
  end
end
max_cnt = [max_cnt, cnt].max

puts max_cnt
