N = gets.to_i

if N % 10 == 3
  puts "bon"
elsif [2, 4, 5, 7, 9].include? N % 10
  puts "hon"
else
  puts "pon"
end
