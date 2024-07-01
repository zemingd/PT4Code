require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
n = gets_i
bix = gets.chomp.to_i(2)

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

def rf(n, count)
  if n == 0
    return count
  end
  pcount = popcount(n)
  p [n.to_s(2), pcount.to_s(2)]
  count += 1
  rf(n % pcount, count)
end

# (n-1).downto(0) do |i|
#   n = bix
#   if bix[i] == 0
#     n += 1 << i
#   else
#     n -= 1 << i
#   end
#   puts rf(n,0)
# end

(n-1).downto(0) do |i|
  n = bix
  if bix[i] == 0
    n += 1 << i
  else
    n -= 1 << i
  end

  pcount = popcount(n)
  if popcount(n % pcount) == 3
    puts 3
  elsif n % pcount == 0
    puts 1
  else
    puts 2
  end
end
