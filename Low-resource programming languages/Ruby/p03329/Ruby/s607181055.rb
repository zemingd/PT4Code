N = gets.to_i

def draw(n, b)
  a = 0
  while n > 0
    a += n%b
    n /= b
  end
  a
end

res = 1e20
(0 .. N).each{|n| x = draw(n, 6) + draw(N - n, 9); res = x if x < res}
puts res