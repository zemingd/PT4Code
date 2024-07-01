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
def getCache(a, b)
  keyArr = b > a ? [a, b] : [b, a]
  key = keyArr.to_s
  $memo[key]
end

def cache(a, b, res)
  keyArr = b > a ? [a, b] : [b, a]
  key = keyArr.to_s
  $memo[key] = res
  res
end

def getGCD(a, b)
  cached = getCache(a, b)
  return cached if cached
  cache(a, b, a.gcd(b))
end

def getGCDAll(as)
  gcd = as[0]
  as[1..-1]&.each.with_index do |a, index|
    gcd = getGCD(gcd, a)
    return 1 if gcd == 1
  end
  gcd
end

# 除く数を求める
def getRejectedIndex(as)
  # 互いに素な数を見つける
  tmp = as.min
  tmp_index = -1;
  as.each_with_index do |a, index|
    tmp_index = index if tmp == a
  end
  as.each_with_index do |a, index|
    # 互いに素の場合、a or tmp のどちらかが reject される数
    return [tmp_index, index] if tmp % a != 0
  end
  # 全て 互いに素でない場合は 最小の数が除かれる数
  return [tmp_index]
end

rejctedIndexes = getRejectedIndex(As)

gcds = rejctedIndexes.map do |index|
  as = As.dup
  as.delete_at(index)

  getGCDAll(as)
end

res = gcds.max
puts res
