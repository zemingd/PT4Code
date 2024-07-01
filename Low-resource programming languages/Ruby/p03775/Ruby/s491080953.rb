n = STDIN.gets.chomp.to_i

def digits(int)
  int.to_s.length
end

def f(a, b)
  digits_a = digits(a)
  digits_b = digits(b)
  digits_a > digits_b ? digits_a : digits_b
end

def main(n)
  ans = digits(n)
  i = 2

  while i**2 <= n
    if n % i == 0
      f_a_b = f(i, n/i)
      ans = ans < f_a_b ? ans : f_a_b
    end
    i += 1
  end

  puts ans
end

main(n)
