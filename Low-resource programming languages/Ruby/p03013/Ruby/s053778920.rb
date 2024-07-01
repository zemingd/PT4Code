n, m = gets.split.map(&:to_i)

MOD = 1_000_000_007

$as = Array.new(n + 3, -1)
$broken = Array.new(n + 3, false)

m.times do
  a = gets.to_i
  $broken[a] = true
end

def rec(a)
  if $broken[a] == true
    return 0
  end

  if a == 0
    $as[0] = 1
    return 1
  end

  if a < 0
    return 0
  end

  if $as[a] != -1
    return $as[a]
  end

  $as[a] = (rec(a - 1) + rec(a - 2)) % MOD
  return $as[a]
end

p rec(n)
