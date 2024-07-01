N = gets.to_i
Ps = gets.split.map(&:to_i)
Qs = gets.split.map(&:to_i)

Ns = [*1..N]

As = Ns.permutation(N).to_a

p = 0
q = 0

As.each_with_index{|a, i|
  p = i if a == Ps
  q = i if a == Qs
}

ans = (p - q).abs

puts ans
