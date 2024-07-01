str = gets
l = str[0..1].to_i
r = str[2..3].to_i

def valid_month?(i)
  i >= 1 && i <= 12
end

if valid_month?(l) && valid_month?(r)
  puts "AMBIGUOUS"
elsif valid_month?(r)
  puts "YYMM"
elsif valid_month?(l)
  puts "MMYY"
else
  puts "NA"
end