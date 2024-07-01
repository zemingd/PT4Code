n = gets.to_i
a = gets.split.map(&:to_i)
class Array
  def gcd
    inject(:gcd)
  end
end
sc = a.gcd

pc = true
x = []
N = a.max

#####2以上N以下の整数　高速素因数分解
#前処理エラトステネスの篩 O(NloglogN)
$spf = Array.new(N-1){|index|index+2}
min = 2
for i in 2..(Math.sqrt(N).to_i)
  if $spf[i-2] == i
    for j in 1..(N/i)
      $spf[i*j-2] = i
    end
  end
end

#クエリ 素因数分解する整数Aに対してO(logA)
def pdiv(sub)
  x = sub
  y = []
  while x != 1
    y << $spf[x-2]
    x /= $spf[x-2]
  end
  y.tally.to_a
end

h = Hash.new(0)
a.each do |i|
  y = pdiv(i)
  y.each do |j|
    if h[j[0]] == 0
      h[j[0]] = 1
    else
      pc = false
      break
    end
  end
  break if pc == false
end

if pc == true
  puts "pairwise coprime"
elsif sc == 1
  puts "setwise coprime"
else
  puts "not coprime"
end