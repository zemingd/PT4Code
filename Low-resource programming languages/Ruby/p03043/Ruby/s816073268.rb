require 'bigdecimal'
N,K = gets.split.map(&:to_i)

precision = BigDecimal('0.0')
1.upto(N) do |i|
  if i >= K
    precision += BigDecimal('1.0')
    # puts "i = #{i}, pre = 1.0"
    next
  end
  timed = i
  count = 0
  loop do
    timed *= 2
    count += 1
    if timed > K
      precision += BigDecimal('1.0') / (BigDecimal('2.00000000000000000000')**count)
      # puts "i = #{i}, cnt = #{count}"
      break
    end
  end
end
puts (precision / N).to_s('f')

