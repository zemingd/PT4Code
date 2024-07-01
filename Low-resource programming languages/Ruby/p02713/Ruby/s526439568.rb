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
  key =
    if a > b
      "#{a}_#{b}"
    else
      "#{b}_#{a}"
    end
  if $memo[key]
    $memo[key]
  else
    ans = _gcd_2(a, b)
    $memo[key] = ans
    ans
  end
end

def gcd_3(a, b, c)
  gcd_2(gcd_2(a, b), c)
end

ans = 0
for i in 1..N
  for j in 1..N
    for k in 1..N
      # p [i, j, k, gcd_3(i, j, k)]
      ans += gcd_3(i, j, k)
    end
  end
end

puts ans
