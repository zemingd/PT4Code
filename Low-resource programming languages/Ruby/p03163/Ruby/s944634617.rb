N,W= gets.split.map(&:to_i)
$w_ary = []
$v_ary = []
N.times do |n|
  w,v = gets.split.map(&:to_i)
  $w_ary << w
  $v_ary << v
end

$cache = {}
def calc(n, left, total)
  return 0 if n == N

  if $w_ary[n] <= left
    tmp = total + $v_ary[n]
    $total = tmp if $total < tmp
    calc(n+1, left - $w_ary[n], tmp)
  end
  calc(n+1, left, total)
end

$total = 0
calc(0, W, 0)

puts $total