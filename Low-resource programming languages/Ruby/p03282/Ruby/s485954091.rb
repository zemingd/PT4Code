S = gets.chomp
K = gets.to_i

ans =
  if S[0] == '1'
    K == 1 ? '1' : S[1]
  else
    S[0]
  end
puts ans
