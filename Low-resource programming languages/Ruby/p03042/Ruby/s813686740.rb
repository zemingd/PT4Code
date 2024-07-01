S = gets.chomp
MM = ["01","02","03","04","05","06","07","08","09","10","11","12"]
pre = MM.include?(S.slice(0..1))
suf = MM.include?(S.slice(2..3))
if pre && suf
  puts "AMBIGUOUS"
elsif !pre && suf
  puts "YYMM"
elsif pre && !suf
  puts "MMYY"
else
  puts "NA"
end