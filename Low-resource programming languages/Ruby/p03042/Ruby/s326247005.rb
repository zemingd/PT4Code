s = gets.to_s
bs = s.slice(0, 2).to_i
as = s.slice(3, 2).to_i

y = /\d\d/
m = /0[123456789]|[1][12]/

if bs > 12 && as > 12 || s == "0000" || bs > 12 && as == "00" || bs == "00" && as > 12
  return "NA"
elsif bs.to_s =~ m && as.to_s =~ y
  puts "MMYY"
  return
elsif bs.to_s =~ y && as.to_s =~ m
  puts "YYMM"
  return
else
  puts "AMBIGUOUS"
end