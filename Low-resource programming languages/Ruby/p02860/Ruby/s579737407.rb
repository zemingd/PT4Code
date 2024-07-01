N = gets.to_i
S = gets.chomp

if N.even? && S[0...N/2] == S[N/2..-1]
  puts 'Yes'
else
  puts 'No'
end
