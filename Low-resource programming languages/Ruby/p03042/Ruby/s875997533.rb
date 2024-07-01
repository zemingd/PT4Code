S = gets.chomp

months = %w(01 02 03 04 05 06 07 08 09 10 11 12)
years = months + (13..99).to_a.map(&:to_s)

if months.include?(S[0,2])
  if months.include?(S[2,4])
    puts "AMBIGUOUS"
  elsif years.include(S[2,4])
    puts "MMYY"
  else
    puts "NA"
  end
elsif years.include?(S[0,2])
  if months.include?(S[2,4])
    puts "YYMM"
  elsif years.include?(S[2,4])
    puts "AMBIGUOUS"
  else
    puts "NA"
  end
else
	puts "NA"
end
