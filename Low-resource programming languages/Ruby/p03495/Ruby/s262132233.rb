def together(xs)
  xs.sort!
  ans = [[xs[0]]]
  j = 0
  for i in 1..(xs.length - 1)
    if xs[i] == xs[i - 1]
      ans[j] << xs[i]
    else
      ans << [xs[i]]
      j += 1
    end
  end
  ans
end

def count2(xs)
  xs = together(xs)
  ans = []
  for x in xs
    ans << [x[0], x.length]
  end
  ans
end

n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
as = count2(as).sort{|a, b| a[1] <=> b[1]}
ans = 0
until as.length <= k
  ans += as[0][1]
  as.shift
end
puts ans