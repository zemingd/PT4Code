N, M = gets.chomp.split(" ").map(&:to_i)
a = []
M.times{
  a << gets.to_i
}
CD = 10 ** 9 + 7

Fib = [1, 1]
def fibonacci(n)
  return 0 if n == -1
  return Fib[n] if Fib.size > n
  (Fib.size..n).each{|i|
    tmp = Fib[i-2] + Fib[i-1]
    tmp %= CD if tmp > CD
    Fib << tmp
  }
  return Fib[n]
  
end

a << N + 1
ls = 0
ans = 1
a.each{|stp|
  ans *= fibonacci(stp - ls - 1)
  ls = stp + 1
}

p ans % CD
