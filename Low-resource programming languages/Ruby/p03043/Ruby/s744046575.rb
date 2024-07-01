def pow_count(n ,k)
  (0..17).to_a.keep_if {|count| n * 2 ** count >= k}[0]
end

lines = readlines.map(&:strip)
n, k = lines[0].split.map(&:to_i)

result = (1..n).to_a.map {|number|
  (1/n.to_f) * (1/2.0) ** pow_count(number, k)
}.inject(0) {|memo, number| memo+number }

puts result