inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N = inputs[0]
As = inputs[1].split(" ").map(&:to_i)

#
# 2個の最大公約数を求める関数
#
$memo = {}
def getGCD(a, b)
  keyArr = b > a ? [a, b] : [b, a]
  key = keyArr.to_s
  if $memo[key]
    $memo[key]
  else
    $memo[key] = a.gcd(b)
    $memo[key]
  end
end

def getGCDAll(as)
  if as.size == 1
    return as[0]
  end

  gcd = as[0]
  as[1..-1].each do |a|
    gcd = getGCD(gcd, a)
  end
  gcd
end

gcds = As.map.with_index do |_, index|
  as = As.dup
  as.delete_at(index)
  gcd = getGCDAll(as)
end

res = gcds.max
puts res
