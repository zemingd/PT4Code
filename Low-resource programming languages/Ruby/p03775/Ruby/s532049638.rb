n = STDIN.gets.chomp.to_i

def digits(int)
  int.to_s.length
end

def f(a, b)
  [digits(a), digits(b)].max
end

def test1(n)
  a = 1
  b = n
  i = 2

  min_digits = digits(n)

  while a < b
    if b % i == 0
      a *= i
      b /= i
      min_digits = [min_digits, f(a,b)].min
      next
    end
    i += 1
  end
  min_digits
end


puts test1(n)
