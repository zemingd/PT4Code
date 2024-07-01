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
  return a if b == 0
  $memo[[a, b].to_s] = getGCD(b, a % b)
end

def getGCDAll(as)
  if as.size == 1
    return as[0]
  end

  gcd = as[0]
  as[1..-1].each do |a|
    gcd = getGCD(gcd, a)
    return 1 if gcd == 1
  end
  gcd
end

gcds = As.uniq.map.with_index do |_, index|
  as = As.dup
  as.delete_at(index)
  getGCDAll(as)
end

res = gcds.max
puts res
