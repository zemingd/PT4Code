N = gets.to_i
S = gets.chomp

count = 0

(N-2).times do |i|
  if S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C'
    count += 1
  end
end

puts count
