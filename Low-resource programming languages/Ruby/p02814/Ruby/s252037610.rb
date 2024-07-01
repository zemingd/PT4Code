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

