N = gets.to_i
S = gets

puts "No" if N % 2 == 1

str = S.slice(0, N/2)

if (str * 2) == S 
  puts "Yes"
else
  puts "No"
end



