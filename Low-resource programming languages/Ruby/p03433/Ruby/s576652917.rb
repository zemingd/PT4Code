raw_data = gets
amount = raw_data.to_i
one_yen = gets.to_i

if one_yen >= amount
  puts "Yes"
elsif
  amount % 500 == 0
  puts "Yes"
elsif
  one_yen >= raw_data.slice!(1..3).to_i
  puts "Yes"
else
  puts "No"
end