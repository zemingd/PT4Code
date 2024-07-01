A,B,C=gets.chomp.split.map(&:to_i)

if (A==B and A==C and B==C) or (A!=B and A!=C and B!=C)
  puts "No"
else
  puts "Yes"
end