require 'bigdecimal/math'

N, K = gets.split.map {|e| BigDecimal e }
tmp = 0

1.upto([N, K - 1].min) do |i|
  tmp += 0.5 ** (Math.log2(K / i)).ceil
end

puts ((tmp + [(N - K + 1), 0].max) / N).to_s 'F'