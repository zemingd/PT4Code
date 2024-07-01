k = gets.to_i

def gcd(a,b)
  if a > b
    m = a
    n = b
  else
    m = b
    n = a
  end
  while true
    r = m % n
    if r == 0
      return n
    end
    m = n
    n = r
  end
end

sum = 0
k.times { |_x|
  x = _x+1
  k.times { |_y|
    y = _y+1
    t = gcd(x,y)
    k.times { |_z|
      z = _z+1
      s = gcd(t,z)
      sum += s
    }
  }
}
puts sum
