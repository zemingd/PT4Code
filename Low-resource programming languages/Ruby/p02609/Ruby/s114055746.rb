N = gets.to_i
X = gets.chomp

pop_cnt = X.count('1')

p0 = pop_cnt + 1
p1 = pop_cnt - 1

if p1 == 0
  puts 1
  exit
end

bases = [X.to_i(2) % p0, X.to_i(2) % p1]

$cache = Hash.new
$cache[0] = 0
 
class Integer
  def popcount
    to_s(2).count('1')
  end
end
 
def f(x)
  return $cache[x] if $cache[x]

  $cache[x] = f(x % x.popcount) + 1
end

v0 = 1 % p0
v1 = 1 % p1

ans = []

N.times do |i|
  if X[N - i - 1] == '0'
    r = (bases[0] + v0) % p0
  else
    r = (bases[1] - v1) % p1
  end

  if r == 0
    ans << 1
  else
    ans << f(r) + 1
  end

  v0 = (2 * v0) % p0
  v1 = (2 * v1) % p1
end

puts ans.reverse
