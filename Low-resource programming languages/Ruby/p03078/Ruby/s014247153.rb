x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort.reverse
b = gets.split.map(&:to_i).sort.reverse
c = gets.split.map(&:to_i).sort.reverse

results = []
q = [[a[0]+b[0]+c[0],0,0,0]]
checks = {}

def check_key a, b, c
  a + 10000 * b + (10000 ** 2) * c
end

while true do
  q = q.sort_by{|qq| -qq[0] }
  qq = q.shift
  results.push qq[0]
  if results.size >= k
    break
  end
  _a, _b, _c = qq[1], qq[2], qq[3]
  if _a + 1 < x && !checks[check_key(_a+1, _b, _c)]
    q.push([a[_a + 1] + b[_b] + c[_c], _a + 1, _b, _c])
    checks[check_key(_a+1, _b, _c)] = true
  end
  if _b + 1 < y && !checks[check_key(_a, _b+1, _c)]
    q.push([a[_a] + b[_b + 1] + c[_c], _a, _b + 1, _c])
    checks[check_key(_a, _b+1, _c)] = true
  end
  if _c + 1 < z && !checks[check_key(_a, _b, _c + 1)]
    q.push([a[_a] + b[_b] + c[_c + 1], _a, _b, _c + 1])
    checks[check_key(_a, _b, _c+1)] = true
  end
end

results.each do |r|
  puts r 
end