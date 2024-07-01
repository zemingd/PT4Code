S = gets.chomp.chars
cnt1 = 0
cnt2 = 0

S.each_with_index do |e, idx|
  cnt1 += 1 if idx.even? && e == '1'
  cnt1 += 1 if idx.odd? && e == '0'
end

S.each_with_index do |e, idx|
  cnt2 += 1 if idx.even? && e == '0'
  cnt2 += 1 if idx.odd? && e == '1'
end

puts [cnt1, cnt2].min