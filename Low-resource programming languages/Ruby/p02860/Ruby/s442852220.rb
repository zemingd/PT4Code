N = gets.to_i
S = gets.chomp
if N%2 != 0
  puts "No"
  exit
end

if S[0...N/2] == S[N/2...N]
  puts "Yes"
else
  puts "No"
end