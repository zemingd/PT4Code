s = gets.chomp.to_i

puts aa
puts bb

ay = true
am = 0 < aa && aa < 13
by = true
bm = 0 < bb && bb < 13

if am && bm
  puts "AMBIGUOUS"
elsif !am && bm
  puts "YYMM"
elsif am && !bm
  puts "MMYY"
elsif !am && !bm
  puts "NA"
end
