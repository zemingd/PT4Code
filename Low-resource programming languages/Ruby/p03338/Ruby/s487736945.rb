N = gets.to_i
S = gets.chomp

result = []
0.upto(N - 2) do |i|
  result << (S[0..i].chars & S[i+1..N].chars).size
end
puts result.max