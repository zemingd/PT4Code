N = gets.strip.to_i
S = gets.strip.split('')
c = 0
(N-2).times do |i|
  c += 1 if S[i] == 'A' && S[i+1] == 'B' && S[i+2] == 'C'
end
puts c