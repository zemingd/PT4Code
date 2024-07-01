N = gets.chomp.to_i

S = N % 10

if S == 3
  puts "bon"
elsif S == 0 || S == 1 || S == 6 || S == 8
  puts "pon"
else
  puts "hon"
end