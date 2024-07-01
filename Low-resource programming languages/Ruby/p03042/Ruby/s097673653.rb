#!/usr/bin/env ruby

s = gets.chomp
first = s[0..1].to_i
second = s[2..3].to_i

if 1 <= first and first <= 12
  if 1 <= second and second <= 12
    puts "AMBIGUOUS"
  else
    puts "MMYY"
  end
elsif first == 0
  if 1 <= second and second <= 12
    puts "YYMM"
  elsif second == 0
    puts "NA"
  else
    puts "NA"
  end
else # first == YY
  if 1 <= second and second <= 12
    puts "YYMM"
  elsif second == 0
    puts "NA"
  else
    puts "NA"
  end
end
