require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i
bix = gets.chomp.to_i(2)
x = "" #gets.chomp.split("")

# n = 2 * (10 ** 5)
# x = ["1"] * (10 ** 5)

def popcount(x)
  m1 = 0x55555555
  m2 = 0x33333333
  m4 = 0x0f0f0f0f
  x -= (x >> 1) & m1
  x = (x & m2) + ((x >> 2) & m2)
  x = (x + (x >> 4)) & m4
  x += x >> 8
  return (x + (x >> 16)) & 0x3f
end

def f(n)
  a = n
  count = 0
  loop do
    break if n == 0
    pcount = popcount(n)
    n = n % pcount
    count += 1
  end
  p [a, count]
end

ans = {}
def rf(n, count)
  if n == 0
    return count
  end
  pcount = popcount(n)
  count += 1
  rf(n % pcount, count)
end

# 0.upto(n-1) do |i|
#   sx = x.dup
#   if sx[i] == "0"
#     sx[i] = "1"
#   else
#     sx[i] = "0"
#   end

#   n = sx.join.to_i(2)
#   puts rf(n,0)
# end

(n-1).downto(0) do |i|
  n = bix
  if bix[i] == 0
    n += 1 << i
  else
    n -= 1 << i
  end
  puts rf(n,0)
end
