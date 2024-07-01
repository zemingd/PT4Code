inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N = inputs[0].to_i

$memo = Hash.new

def _gcd_2(a, b)
  _gcd_2(b, a) if b > a
  return b if (r = a % b).zero?
  _gcd_2(b, r)
end

def gcd_2(a, b)
  g, l =
    if a > b
      [a, b]
    else
      [b, a]
    end
  key = "#{l}_#{g}"
  if $memo[key]
    $memo[key]
  else
    ans = _gcd_2(l, g)
    $memo[key] = ans
    ans
  end
end

ans = 0
for i in 1..N
  for j in 1..N
    gcd_ij = gcd_2(i, j)
    for k in 1..N
      # p [i, j, k, gcd_3(i, j, k)]
      ans += gcd_2(gcd_ij, k)
    end
  end
end

puts ans
