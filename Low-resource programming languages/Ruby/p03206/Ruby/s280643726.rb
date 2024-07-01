n, x = gets.split.map(&:to_i)

$a, $p = [1], [1]
n.times do |i|
  $a << $a[i] * 2 + 3
  $p << $p[i] * 2 + 1
end

def f(n, x)
  if n == 0
    return x <= 0 ? 0 : 1
  elsif x <= 1 + $a[n - 1]
    return f(n-1, x-1)
  else
    return $p[n-1] + 1 + f(n-1, x-2-$a[n-1])
  end
end

puts f(n, x)
