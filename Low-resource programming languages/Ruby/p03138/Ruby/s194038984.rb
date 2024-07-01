k = gets.split[1].to_i
as_orig = as = gets.split.map(&:to_i)

max_bit = k.to_s(2).length
max_k = (0..max_bit).reverse_each.inject(0) do |res, i|
  sq = 2**i
  calculated = as.map do |a|
    [a % sq, a / sq]
  end

  as, counts = calculated.transpose
  cond = counts.count(0) >= counts.count(1) && res + sq <= k
  cond ? res + sq : res
end
puts as_orig.map { |a| a ^ max_k }.inject(&:+)
