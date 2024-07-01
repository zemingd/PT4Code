@dp = {}
@dp[1] = 1
list = [1]
6.times do |i|
  list.push(6**(i+1))
end
5.times do |i|
  list.push(9**(i+1))
end
@list = list.sort.reverse
def solve(n)
  remain = n
  ans = {}
  @list.each do |c|
    # puts c
    next if remain < c
    ans[c] = find(c, remain, 0)
  end
  min = ans.map {|_,v| v}.min

  puts min
end

def find(c, remain, count)
  return 1 if @list.include?(remain)
  if remain < c
    @dp["#{c}-#{remain}"] = Float::INFINITY
    return Float::INFINITY
  end
  return @dp["#{c}-#{remain}"] if @dp["#{c}-#{remain}"]


  count = count + 1
  cs = []
  @list.select{|i| remain - c >= i}.each do |c2|
    if @dp["#{c2}-#{remain-c}"]
      cs.push(@dp["#{c2}-#{remain-c}"])
    else
      rt = find(c2, remain - c, count - 1)
      cs.push(rt) if rt < 100
    end
  end
  r = count + cs.min
  @dp["#{c}-#{remain}"] = r
  r
end

def main
  n = gets.chomp.to_i
  solve(n)
end

main