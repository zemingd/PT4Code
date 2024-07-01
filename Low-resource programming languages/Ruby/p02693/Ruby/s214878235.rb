$k = gets.chop.to_i
$a, $b = gets.chop.split.map(&:to_i)

flag = false
ans = $k

$b.times {
  ans += $k
  if ans >= $a && ans <= $b
    flag = true
  end
}

puts flag ? 'OK' : 'NG'
