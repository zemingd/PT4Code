def modpow(a, n, mod)
  if n > 0 && mod > 1
    exp = Math.log(n, 2).floor
    rep = modpow_cl(a, n, exp, mod)
    return rep[0]
  elsif mod == 1
    return 0
  else
    return 1
  end
end

def modpow_cl(a, n, exp, mod)
  if exp < 0
    rep = [1, a]
  else
    if n >= 2**exp
      rep = modpow_cl(a, n-2**exp, exp-1, mod)
      rep[0] = rep[0]*rep[1] % mod
    else
      rep = modpow_cl(a, n, exp-1, mod)
    end
    rep[1] = rep[1]**2 % mod
  end
  return rep
end

def popcntRec(num, cnt)
  maxexp = Math.log(num, 2).floor
  pcnt = 0
  tmp = num
  for i in 0..maxexp
    exp = maxexp - i
    ifdiv = tmp / (2**exp)
    tmp -= ifdiv * (2**exp)
    pcnt += ifdiv
  end
  if num % pcnt == 0
    return cnt
  else
    return popcntRec(num % pcnt, cnt+1)
  end
end

n = gets.to_i
x = gets.split("").map(&:to_i)

cnt1 = 0
x.each{|xe| cnt1 += 1 if xe == 1}

modsLar = Array.new(n,0)
modsSma = Array.new(n,0)

for i in 0..(n-1)
  modsLar[i] = modpow(2, n-1-i, cnt1+1)
  modsSma[i] = modpow(2, n-1-i, cnt1-1) if cnt1 > 1
end

sumorgnLar = 0
sumorgnSma = 0
for i in 0..(n-1)
  sumorgnLar = (sumorgnLar + modsLar[i]) if x[i] == 1
  sumorgnSma = (sumorgnSma + modsSma[i]) % (cnt1-1) if x[i] == 1 && cnt1 > 1
end

ans = Array.new(n,0)
for i in 0..(n-1)
  if x[i] == 0
    modrslt = (sumorgnLar + modsLar[i]) % (cnt1+1)
    if modrslt == 0
      ans[i] = 1
    else
      ans[i] = popcntRec(modrslt, 2)
    end
  else
    if cnt1 > 1
      modrslt = (sumorgnSma - modsSma[i]) % (cnt1-1)
      if modrslt == 0
        ans[i] = 1
      else
        ans[i] = popcntRec(modrslt, 2)
      end
    else
      ans[i] = 1
    end
  end
end

for i in 0..(n-1)
  puts ans[i]
end