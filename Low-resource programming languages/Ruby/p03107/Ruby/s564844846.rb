S = gets.chomp.chars
cnt_0 = 0
cnt_1 = 0
S.each do |ch|
  cnt_0 += 1 if ch == '0'
  cnt_1 += 1 if ch == '1'
end
puts [cnt_0, cnt_1].min * 2
