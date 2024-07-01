N = gets.to_i
S = gets.chomp
cnt = (0..N-3).count do |i|
  S[i, 3] == 'ABC'
end
puts cnt