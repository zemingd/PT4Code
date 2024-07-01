A,B,C=gets.chomp.split.map(&:to_i)

if (A==B and A==C) or (A!=B and A!=C)
  puts "No"
else
  puts "Yes"
end