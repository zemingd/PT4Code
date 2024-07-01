n, m = gets.split.map(&:to_i)

MOD = 1_000_000_007

as = Array.new(n + 3, 0)
m.times do
  a = gets.to_i
  as[a] = -1
end

as[0] = 1

0.upto(n) do |i|
  next if as[i] == -1
  
  if as[i + 1] != -1
    as[i + 1] += as[i]
    as[i + 1] %= MOD
  end

  if as[i + 2] != -1
    as[i + 2] += as[i]
    as[i + 2] %= MOD
  end
end

p as[n]
