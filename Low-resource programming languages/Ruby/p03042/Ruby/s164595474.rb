s = gets.rstrip

head = s.slice(0, 2).to_i
tail = s.slice(2, 4).to_i

if 0 < head and head < 13 and 0 < tail and tail < 13
  puts 'AMBIGUOUS'
elsif 0 < head and head < 13
  puts 'MMYY'
elsif 0 < tail and tail < 13
  puts 'YYMM'
else
  puts 'NA'
end
