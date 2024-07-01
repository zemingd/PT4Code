def check(x)
  c = 0
  while x>0
    ppc = x.to_s(2).count('1')
    x %= ppc
    c += 1
  end
  return c
end

n = gets.strip.to_i
x = gets.strip
ppc = x.count('1') #popcount
ppcp = ppc + 1
ppcm = ppc - 1
# xp,xm = x % ppcp,ppcm
xp = 0
xm = 0
dp = 1
dm = 1
n.times do |i|
  if x[-i-1] == '1'
    xp += dp
    xp -= ppcp if xp >= ppcp
    if ppc > 1
      xm += dm
      xm -= ppcm if xm >= ppcm
    end
  end
  dp *= 2
  dm *= 2
  dp %= ppcp
  dm %= ppcm
end
n.times do |i|
  if x[i] == '0'
    xt = xp + 2.pow(n-1-i, ppcp)
    xt -= ppcp if xt >= ppcp
    if xt == 0
      p 1
    else
      p check(xt) + 1
    end
  else
    if ppc == 1
      p 0
    else
      xt = xm - 2.pow(n-1-i, ppcm)
      xt %= ppcm
      if xt == 0
        p 1
      else
        p check(xt) + 1
      end
    end
  end
end
