class Integer
  def popcount
    to_s(2).count('1')
  end
end

def f(n)
  c = 0
  while n > 0
    n %= n.popcount
    c += 1
  end
  c
end

def modpow(base, n, mod)
  result = 1
  while n > 0
    if n.odd?
      result = result * base % mod
    end

    base = (base * base) % mod

    n /= 2
  end
  result % mod
end

n = gets.to_i
x = gets.chomp
x_int = x.to_i(2)
base_popcount = x.count('1')

mod_zero = x_int % (base_popcount + 1)
mod_one  = x_int % (base_popcount - 1) unless base_popcount == 1

0.upto(n - 1) do |index|
  if x[index] == '1' && base_popcount == 1
    puts 0
    next
  end

  shift = n - index - 1
  mod =
    if x[index] == '0'
      popcount = base_popcount + 1
      (mod_zero + modpow(2, shift, popcount)) % popcount
    else
      popcount = base_popcount - 1
      (mod_one  - modpow(2, shift, popcount)) % popcount
    end

  puts f(mod) + 1
end
