N, M = gets.split.map(&:to_i)

min = 1
max = N

1.upto(M) do
  l, r = gets.split.map(&:to_i)

  min = l if min <= l
  max = r if max >= r
end

ans = max - min + 1
puts  ans.negative? ? 0 : ans