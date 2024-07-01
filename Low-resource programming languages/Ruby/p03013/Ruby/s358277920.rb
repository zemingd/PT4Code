n, m = gets.chomp.split.map(&:to_i)
a = []
m.times { a << gets.chomp.to_i }
# p n
# p m
# p a
$nongap = []
$nongap << 0
$nongap << 1
$nongap << 2
def nongap_step(n)
  return $nongap[n] if $nongap[n]
  if n > 1 then
    r = nongap_step(n-1) + nongap_step(n-2)
    $nongap[n] = r % 1000000007
    return r
  else
    return 0
  end
end
if m == 0 then
  q = nongap_step(n)
else
  q = nongap_step(a[0])
  (1..m-1).each do |x|
    q = q * nongap_step(a[x] - a[x-1] - 1)
    q = q % 1000000007 
  end
end
puts q