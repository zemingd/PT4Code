X, K, D = gets.split(/\s+/).map(&:to_i)

m = 10**15

x = X
k = K
while k > 0
  if x > 0
    if x / D > 0
      minus = [k, x / D].min
      k -= minus
      x -= minus * D
      if x.abs < m
        m = x.abs
      end
    else
      if k % 2 == 0
        m = x.abs
      else
        m = (x-D).abs
      end
      break
    end
  else
    if -x / D > 0
      plus = [k, -x / D].min
      k -= plus
      x += plus * D
      if x.abs < m
        m = x.abs
      end
    else
      if k % 2 == 0
        m = x.abs
      else
        m = (x+D).abs
      end
      break
    end
  end
end

puts m