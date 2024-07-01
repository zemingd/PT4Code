N = gets.chomp.to_i
S = gets.chomp

if N % 2 == 1
  puts 'No'
  exit
end

if S[0..(N/2 - 1)] == S[(N/2)..(N-1)]
  puts "Yes"
else
  puts "No"
end