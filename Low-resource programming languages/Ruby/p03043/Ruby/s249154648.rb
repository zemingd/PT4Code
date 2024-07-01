require 'bigdecimal'
N, K = gets.chomp.split.map(&:to_i)
logs = (1..N).map do |i|
  if i >= K
    BigDecimal("1")
  else
    BigDecimal("1").div( (2 ** (Math.log2(K.to_f / i).ceil)), 10 )
  end
end
puts logs.reduce(:+) / N