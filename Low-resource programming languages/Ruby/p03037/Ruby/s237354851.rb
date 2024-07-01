N, M = gets.split.map(&:to_i)
min, max = gets.split.map(&:to_i)

1.upto(M - 1) do
  l, r = gets.split.map(&:to_i)

  min = l if min <= l
  max = r if max >= r
end

ans = max - min + 1
puts  ans.negative? ? 0 : ans