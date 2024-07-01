N, K = gets.chop.split.map(&:to_i)
P = gets.chop.split(' ').map(&:to_f)


exp = []
P.each do |i|
  exp.push((1..i).inject(:+) / i)
end

memo = exp[0..K-1].inject(:+)
ans = [memo]

(K..N-1).each do |i|
  memo += (exp[i] - exp[i-K])
  ans.push(memo)
end

puts ans.max
