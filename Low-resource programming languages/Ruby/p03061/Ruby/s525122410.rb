def gcd_on_blackboard n, a
  m = []
  a.sort!
  n.times do |i|
    x = a.dup
    x[i] = x[i == 0 ? 1 : 0]
    m[i] = gcd_a x.length, x
  end
  m.max
end

def gcd a, b
  a, b = b, a if a < b
  r = a % b
  if r == 0
    return b
  else
    return gcd b, r
  end
end

$g = {}
def gcd_a n, a
  a = a.uniq.sort
  n = a.length
  return $g[a] if $g.key? a
  $g[a] = if n == 0
            nil
          elsif n == 1
            a[0]
          else
            a0, a1 = a[0, n / 2], a[n / 2, n]
            gcd gcd_a(a0.length, a0), gcd_a(a1.length, a1)
          end
end

n = gets.to_i
a = gets.split(' ').map{|x| x.to_i}
puts gcd_on_blackboard n, a


