require 'pp'
require 'prime'
n = gets.to_i

np = n.prime_division
# p np

npf = np.flat_map{|a,b|[a] * b}
# p npf

ans = n
right = [1]
left  = []

npf.inject(1){|m, i|
  t = m * i
  right << t
  t
}
npf.reverse.inject(1){|m, i|
  t = m * i
  left << t
  t
}
left.reverse!
left << 1
# pp right.zip(left).to_a

right.zip(left).each do |(r,l)|
  t = [r.to_s.size, l.to_s.size].max
  ans = t if ans > t
end
p ans

