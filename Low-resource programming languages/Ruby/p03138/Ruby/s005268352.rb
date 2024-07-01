N, upper_bit = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
beki_ary = (1..39).to_a.each_with_object([1]) { |_i, obj| obj << (obj[-1] * 2)}

ans = 0

digest = 39
while digest != -1
  ones = A.count { |str| str[digest] == 1 }
  if ones * 2 >= N
    ans += beki_ary[digest] * ones
    digest -= 1
    break if upper_bit[digest] == 1
  else
    if upper_bit[digest] == 1
      ans += beki_ary[digest] * (N - ones)
      digest -= 1
    else
      ans += beki_ary[digest] * ones
      digest -= 1
    end
  end
end
while digest != -1
  ones = A.count { |str| str[digest] == 1 }
  if ones * 2 >= N
    ans += beki_ary[digest] * ones
    digest -= 1
  else
    ans += beki_ary[digest] * (N - ones)
    digest -= 1
  end
end

p ans
