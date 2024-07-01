n, m = gets.split.map(&:to_i)

MOD = 1_000_000_007

as = Array.new(n + 5, 0)
m.times do
  a = gets.to_i
  as[a] = -1
end

as[0] = 1

1.upto(n) do |i|
  next if as[i] == -1
  
  sum = 0

  if i > 0 && as[i - 1] != -1
    sum += as[i - 1]
  end

  if i > 1 && as[i - 2] != -1
    sum += as[i - 2]
  end

  as[i] = sum % MOD
end

p as[n]
