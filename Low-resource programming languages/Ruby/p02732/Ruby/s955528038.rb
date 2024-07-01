$memo = Hash.new({})

def choose(n, x)
  return $memo[n][x] if $memo.fetch(n, {}).fetch(x, nil)

  p = 1
  q = 1
  x.times do |i|
    p *= (n - i)
    q *= (i + 1)
  end

  return $memo[n][x] = (p / q).to_i
end

n = gets.to_i
as = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
as.each { |a| h[a] += 1 }
h.select! { |_, v| v >= 2 }

as.each do |a|
  res = 0
  h.each do |k, v|
    if k == a
      res += choose(v - 1, 2) if v - 1 >= 2
    else
      res += choose(v, 2)
    end
  end
  puts res
end
