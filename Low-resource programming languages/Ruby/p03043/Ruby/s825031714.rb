N, K = gets.split.map(&:to_i)


res = 0.0

(1..N).each do |k|
  if k < K
    i = Math.log2(1.0*K/k).ceil
    res += (2**(-i))/N
  else
    res += 1.0/N
  end
end


puts res
