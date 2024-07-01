N, K = gets.chomp.split.map(&:to_i)

logs = (1..N).map do |i|
  if i >= K
    1.0
  else
    1.0 / (2 ** (Math.log2(K/i).ceil))
  end
end
puts logs.reduce(:+) / N