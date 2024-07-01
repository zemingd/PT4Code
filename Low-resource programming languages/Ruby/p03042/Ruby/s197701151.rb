month = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]
a = gets.chomp.chars.map(&:to_s)

flg = 0
format = ""
if a[0] + a[1] != "00" && month.include?(a[2] + a[3])
  flg += 1
  format = "YYMM"
end

if a[2] + a[3] != "00" && month.include?(a[0] + a[1])
  flg += 1
  format = "YYMM"
end

if flg == 2
  puts "AMBIGUOUS"
elsif flg == 1
  puts format
else
  puts "NA"
end

