N = gets.to_i
X = gets.chomp

zeros = X.count('1')
base = X.to_i(2)

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

N.times do |i|
  e = N - i - 1

  if X[i] == '0'
    x = (base + 2 ** e)
    cnt = zeros + 1
  else
    x = (base - 2 ** e)
    cnt = zeros - 1
  end

  r = x % cnt

  if r == 0
    puts 1
  else
    puts f(r) + 1
  end
end
