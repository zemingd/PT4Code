s = gets.chomp

front_half = s.slice(0..1).to_i
end_half = s.slice(2..3).to_i

if front_half.between?(1,12) && end_half.between?(1,12)
  puts "AMBIGUOUS"
elsif front_half.between?(1,12) && !end_half.between?(1,12)
  puts "MMYY"
elsif !front_half.between?(1,12) && end_half.between?(1,12)
  puts "YYMM"
else
  puts "NA"
end

