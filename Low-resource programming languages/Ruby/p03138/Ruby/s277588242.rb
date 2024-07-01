N, upper_bit = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
already_min = false

ans = 0
mask = 1 << 39
39.step(0, -1) do |digest|
  ones = A.count { |str| (str & mask) > 0 }
  if ones * 2 >= N
    already_min = true if upper_bit[digest] == 1
    ans += mask * ones
  else
    if already_min || (upper_bit[digest] == 1)
      ans += mask * (N - ones)
    else
      ans += mask * ones
    end
  end
  mask = mask >> 1
end
p ans
