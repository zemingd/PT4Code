month = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]
a = gets.chomp.chars.map(&:to_s)

front = a[0] + a[1]
back = a[2] + a[3]
if (front != "00" && month.include?(back)) && (back != "00" && month.include?(front))
  puts "AMBIGUOUS"
elsif front != "00" && month.include?(back)
  puts "YYMM"
elsif back != "00" && month.include?(front)
  puts "MMYY"
else
  puts "NA"
end