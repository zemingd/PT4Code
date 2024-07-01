N, K = gets.split.map(&:to_i)
P_LIST = gets.split.map(&:to_i)
kitaichi = P_LIST.map do |x|
  (x + 1).to_f / 2
end
max = sum = kitaichi[0..(K-1)].inject(0){|a,b| a + b }

K.upto(N-1) do |x|
  sum += kitaichi[x]
  sum -= kitaichi[x-K]
  if sum > max
    max = sum
  end
end

puts max