#!/usr/bin/env ruby

s = gets.chomp

first = s[0, 2].to_i
last = s[2,2].to_i
yymm = false
mmyy = false
if first != 0 && last != 0 then
  if 1 <= first && first <= 12 then
    mmyy = true
  end
  if 1 <= last && last <= 12 then
    yymm = true
  end
end

if yymm && mmyy then
  puts "AMBIGUOUS"
elsif yymm && !mmyy then
  puts "YYMM"
elsif !yymm && mmyy then
  puts "MMYY"
else
  puts "NA"
end
