num = gets.chomp.to_i

if 22 <= num and num <= 25
  puts "Christmas" + " Eve" * (25-num)
end