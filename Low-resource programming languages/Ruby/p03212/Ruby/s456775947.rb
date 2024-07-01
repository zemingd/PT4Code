
DBG =  !true
DBG2 =  !true
DBGf =  !true
DBGg =  !true

def f(j, b, x)
  if b == 0
    return (x>=j ? 1 : 0)
  end
  msb = x / (10**b)
  rest = x % (10**b)
  rest0 = (10**b)-1
  if msb == 0
    return f(j, b-1, rest)
  end
  ret = f(j, b-1, rest0)  # msb 0
  #ret += (msb >= j ? 1 : 0) # msb j
  if msb < j
    ret += 0  # dmy
  elsif msb == j
    ret += ff(j,b-1,rest)
  elsif msb > j
    ret += 1
  end
  printf("f(%d,%d,%d) returning %d\n",
        j, b, x, ret) if DBGf
  return ret
end

def ff(j, b, x)  # assume i<j  zero not allowed
  if b == 0
    return (x>=j ? 1 : 0)
  end
  msb = x / (10**b)
  rest = x % (10**b)
  printf("   in-ff) x:%d b: %d msb:%d rest:%d\n",
         x, b, msb, rest) if DBGf
  ret = 0  # msb<i
  if msb < j
    ret += 0  # dmy
  elsif msb == j
    ret = ff(j,b-1,rest)  # msb i
  elsif msb > j
    ret = 1    # msb ij
  end
  printf("ff(%d,%d,%d) returning %d\n",
         j,b,x, ret) if DBGf
  return ret
end

def g(i, j, b, x)  # assume i<j  upper bits may be zero
  if b == 0
    return (x>=j ? 2 : x>=i ? 1 : 0)
  end
  msb = x / (10**b)
  rest = x % (10**b)
  return g(i,j,b-1,rest) if msb==0
  rest0 = (10**b)-1
  printf("in-g) x:%d b: %d msb:%d rest:%d\n",
         x, b, msb, rest) if DBGg
  ret = g(i,j,b-1,rest0)  # msb 0
  if msb < i
    ret += 0  # dmy
  elsif msb == i
    ret += gg(i,j,b-1,rest)   # msb i
  elsif msb < j
    ret += 2**b   # msb i
  elsif msb == j
    ret += 2**b + gg(i,j,b-1,rest)  # msb i,j
  elsif msb > j
    ret += (2**b)*2  # msb ij
  end
  printf("g(%d,%d,%d,%d): returning %d\n",
         i, j, b, x, ret) if DBGg
  return ret
end

def gg(i, j, b, x)  # assume i<j  zero not allowed
  if b == 0
    return (x>=j ? 2 : x>=i ? 1 : 0)
  end
  msb = x / (10**b)
  rest = x % (10**b)
  printf("   in-gg) x:%d b: %d msb:%d rest:%d\n",
         x, b, msb, rest) if DBGg
  ret = 0  # msb<i
  if msb < i
    ret += 0  # dmy
  elsif msb == i
    ret = gg(i,j,b-1,rest)  # msb i
  elsif msb < j
    ret = 2**b      # msb i
  elsif msb == j
    ret = 2**b + gg(i,j,b-1,rest)  # msb i,j
  elsif msb >j
    ret = (2**b) * 2    # msb ij
  end
  printf("gg(%d,%d,%d,%d) returning %d\n",
         i,j,b,x, ret) if DBGg
  return ret
end


def h(i, j, k, b, x)  # assume i<j<k  upper bits may be zero
  if b == 0
    return (x>=k ? 3 : x>=j ? 2 : x>=i ? 1 : 0)
  end
  msb = x / (10**b)
  rest = x % (10**b)
  return h(i,j,k,b-1,rest) if msb==0
  rest0 = (10**b)-1
  printf("in-h) x:%d b: %d msb:%d rest:%d\n",
         x, b, msb, rest) if DBG

  ret = h(i,j,k,b-1,rest0)  # msb 0
  if msb < i
    ret += 0  # dmy
  elsif msb == i
    ret += hh(i,j,k,b-1,rest)  # msb i
  elsif msb < j
    ret += 3**b  # msb i
  elsif msb == j
    ret += 3**b + hh(i,j,k,b-1,rest)  # msb i,j
  elsif msb < k
    ret += (3**b)*2  # msb ij
  elsif msb == k
    ret += (3**b)*2 + hh(i,j,k,b-1,rest)  # msb ij,k
  elsif msb > k
    ret += (3**b)*3  # msb ijk
  end
  printf("h(%d): returning %d\n", x, ret) if DBG
  return ret
end

def hh(i, j, k, b, x)  # assume i<j<k  zero not allowed
  if b == 0
    return (x>=k ? 3 : x>=j ? 2 : x>=i ? 1 : 0)
  end
  msb = x / (10**b)
  rest = x % (10**b)
  printf("   in-hh) x:%d b: %d msb:%d rest:%d\n",
         x, b, msb, rest) if DBG
  ret = 0  # if msb < i
  if msb < i
    ret += 0   # dmy
  elsif msb == i
    ret = hh(i,j,k,b-1,rest)   # msb i
  elsif msb < j
    ret = 3**b  # msb i
  elsif msb == j
    ret = 3**b + hh(i,j,k,b-1,rest)  # msb i,j
  elsif msb < k
    ret = (3**b)*2   # msb ij
  elsif msb == k
    ret = (3**b)*2 + hh(i,j,k,b-1,rest)  # msb ij,k
  elsif msb > k
    ret = (3**b)*3  # msb ijk
  end
  printf("hh(%d) returning %d\n", x, ret) if DBG
  return ret
end

s = gets.chomp!

n = s.to_i
a = []
for i in 0...s.size
  a << s[i].to_i
end

if DBG2
  printf("h %d g35 %d g37 %d g57 %d f3 %d f5 %d f7 %d",
      h(3,5,7,9,n) , g(3,5,9,n) ,g(3,7,9,n) , g(5,7,9,n) ,
                   f(3,9,n) , f(5,9,n) , f(7,9,n))
  puts ""
end

print h(3,5,7,9,n) - g(3,5,9,n) - g(3,7,9,n) - g(5,7,9,n) +
                   f(3,9,n) + f(5,9,n) + f(7,9,n)
