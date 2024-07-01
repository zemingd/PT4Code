N = gets.chomp.to_i
S = gets.chomp.split('')
while N > 0
  (1..S.size).each do |j|
    if S[j - 1] == 'Z'
      S[j - 1] = 'A'
    else
      S[j - 1].succ!
    end
  end
  N = N - 1
end
puts S.join