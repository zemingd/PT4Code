str = gets
l = str[0, 2].to_i
r = str[2, 2].to_i

def valid_month?(i)
  i >= 1 && i <= 12
  end

def valid_year?(i)
  i >= 1 && i <= 100
end

if valid_month?(l) && valid_month?(r)
  puts "AMBIGUOUS"
elsif valid_year?(l) && valid_month?(r)
  puts "YYMM"
elsif valid_month?(l) && valid_year?(r)
  puts "MMYY"
else
  puts "NA"
end