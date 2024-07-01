require 'prime'
N = gets.to_i

divs = N.prime_division.flat_map{|d, n|
  [d] * n
}
divs = [1] if divs.empty?
len = divs.length
ans = Float::INFINITY
for b in 0..(2**len-1)
  pat = format("%0#{len}b", b).chars
  u = v = 1
  pat.zip(divs) do |group, d|
    group == "0" ? u *= d : v *= d
  end
  uu = u.to_s.length
  vv = v.to_s.length
  ans = [ans, [uu, vv].max].min
end
p ans
