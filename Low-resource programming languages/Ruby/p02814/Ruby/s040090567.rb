def gcd(x, y)
  if y == 0
    return x
  else
    gcd(y, x % y)
  end
end

def main
  n, m = gets.chomp.split.map(&:to_i)
  a = gets.chomp.split.map(&:to_i)
  
  #aを2で割る
  a = a.map {|v| v / 2}

  #aを２で割り切れるだけ割る
  isSame = true
  while a[0] % 2 == 0 do
    n.times do |i|
      if a[i] % 2 == 0
        a[i] /= 2
      else
        isSame = false
      end 
    end
    m /= 2
  end

  return 0 if isSame == false
  a.each do |v|
    return 0 if v % 2 == 0
  end

  #aの最小公倍数を求める
  lcm = 1
  n.times do |i|
    g = gcd(lcm, a[i])
    lcm = (lcm / g) * a[i] 
    return 0 if lcm > m
  end

  #m以下の中でlcmの奇数倍の総和を求める
  ans = 0
  i = 0
  while true do
    l = lcm * (i * 2 + 1)
    if m > l
      ans += 1
    else
      break
    end
    i += 1  
  end

  return ans
end

puts main