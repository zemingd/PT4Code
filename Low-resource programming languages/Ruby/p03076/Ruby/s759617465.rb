M = 5.times.map { gets.to_i }

min_t = 9
min_idx = 0
5.times do |i|
  if M[i]%10 != 0 && min_t > M[i]%10
    min_t = M[i]%10
    min_idx = i
  end
end

ans = 5.times.map do |i|
  if i == min_idx || M[i]%10==0
    M[i]
  else
    10 - M[i]%10 + M[i]
  end
end

puts ans.inject(:+)