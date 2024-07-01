s = gets.chomp.chars
cnt_e = cnt_o = 0

s.each_with_index do |c,i|
  if i.even?
    cnt_e += 1 if c == "1"
    cnt_o += 1 if c == "0"
  else
    cnt_e += 1 if c == "0"
    cnt_o += 1 if c == "1"
  end
end
puts [cnt_e,cnt_o].min

