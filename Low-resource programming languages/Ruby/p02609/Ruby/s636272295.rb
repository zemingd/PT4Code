def popcount(n)
  n.to_s(2).count("1")
end

def f(x)
  co = 0
  loop do
    x = x % popcount(x)
    co += 1
    return co if x.zero?
  end
end

n = gets.to_i
x = gets.to_i(2)

puts (1..n).map {|i| f(x ^ (1 << (n - i))) }