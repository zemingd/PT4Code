@memo = []
def fib(n)
  if n == 1
     1
  elsif n ==2
    3
  else
    @memo[n] ||= fib(n-1) + fib(n-2)
  end
end

puts fib(gets.to_i)