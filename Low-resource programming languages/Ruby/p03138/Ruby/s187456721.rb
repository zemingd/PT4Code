# https://atcoder.jp/contests/abc117/tasks/abc117_d
N, upper_bit = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
beki_ary = (1..39).to_a.each_with_object([1]) { |i, obj| obj << (obj.last * 2)}
already_min = false

ans = 0
mask = 1 << 40
39.step(0, -1) do |digest|
  mask = mask >> 1
  ones = A.count { |str| (str & mask) > 0 }
  if ones * 2 >= N
    already_min = true if upper_bit[digest] == 1
    ans += beki_ary[digest] * ones
  else
    if already_min || (upper_bit[digest] == 1)
      ans += beki_ary[digest] * (N - ones)
    else
      ans += beki_ary[digest] * ones
    end
  end
end
p ans
