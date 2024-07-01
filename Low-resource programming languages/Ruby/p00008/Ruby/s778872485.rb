def f(n)
  return 0 if n <= 0 or 36 < n
  f1([], 4, n, 9).reduce(:+)
end

def f1(acc, cnt, n, limit)
  return [ncombination(acc + [0] * cnt)] if n == 0
  lbound = [1, (n / cnt).to_i].max
  ubound = [n, limit].min
  ubound.downto(lbound).flat_map {|x| f1(acc + [x], cnt - 1, n - x, x) }
end

def ncombination(xs)
  @table = {
    [4] => 1,
    [3,1] => 4,
    [2,1,1] => 24 / 2,
    [2,2] => 24 / 2 / 2,
    [1,1,1,1] => 24
  }
  h = {}
  xs.each do |x|
    h[x] ||= 0
    h[x] += 1
  end
  @table[h.values.sort_by{|x| -x }]
end


while line = gets
  puts f(gets.to_i)
end