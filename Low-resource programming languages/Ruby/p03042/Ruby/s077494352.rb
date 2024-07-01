s = gets.chomp

a = s[0..1].to_i
b = s[2..3].to_i

case [a.between?(1,12), b.between?(1,12)]
when [true,true]
  puts "AMBIGUOUS"
when [true,false]
  puts "MMYY"
when [false,true]
  puts "YYMM"
when [false,false]
  puts "NA"
end
