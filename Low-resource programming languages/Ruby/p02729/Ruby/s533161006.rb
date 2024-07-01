def modpow(a, n, mod)
  exp = Math.log(n, 2).floor
  rep = modpow_cl(a, n, exp, mod)
  return rep[0]
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

def modcomb(n, k, mod)
  return 1 if k < 1 || n <= k
  nume = deno = 1
  for i in 1..k
    nume = nume*(n-i+1) % mod
    deno = deno*i % mod
  end
  return nume*modpow(deno, mod-2, mod) % mod
end

n, m = gets.split.map(&:to_i)
ans = 0
ans += modcomb(n, 2, 10**9+7) if n >= 2
ans += modcomb(m, 2, 10**9+7) if m >= 2
puts ans
