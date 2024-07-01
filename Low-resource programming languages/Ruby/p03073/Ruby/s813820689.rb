S = gets.chomp.split(//)

len = S.size
cnt = 0
S.each_with_index do |c, ix|
  cnt += 1 if (ix%2 == 0 && c == '0') || (ix%2 == 1 && c == '1')
end
puts [cnt, len - cnt].min

