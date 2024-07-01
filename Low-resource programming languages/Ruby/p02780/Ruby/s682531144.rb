@exp ||= []

def exp(n)
  return @exp[n] if @exp[n]

  @exp[n] = 1.upto(n).inject(0, &:+).to_f / n
end

n, k = gets.chomp.split(" ").map(&:to_i)
ps = gets.chomp.split(" ").map(&:to_i)

e = ps.map {|pi| exp(pi) }

max = 0
0.upto(n - k) do |i|
  sum = e[i, k].inject(0, &:+)
  max = sum if max < sum
end

puts max
