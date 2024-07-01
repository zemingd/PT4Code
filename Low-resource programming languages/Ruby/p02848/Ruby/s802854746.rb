N = gets.chomp.to_i
S = gets.chomp

(0..(S.length - 1)).each do |i|
  (0..(N-1)).each do |j|
    S[i] = S[i].succ[0]
  end
end
puts S