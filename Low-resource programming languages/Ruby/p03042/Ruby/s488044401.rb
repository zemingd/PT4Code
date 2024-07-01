s = gets.to_i
a = s % 100
b = s / 100

if ([a,b].min == 0 && [a,b].max > 12) || [a,b].max == 0
 puts "NA"
elsif ([a,b].min > 0) && ([a,b].max < 13)
 puts "AMBIGUOUS"
else
 puts a < 13 ? "YYMM" : "MMYY"
end
