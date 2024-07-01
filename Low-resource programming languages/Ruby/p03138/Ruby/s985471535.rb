# https://atcoder.jp/contests/abc117/tasks/abc117_d
=begin
3 7
1 6 3

14

4 9
7 4 0 3

46

1 0
1000000000000

1000000000000
=end
N, upper_bit = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
beki_ary = (1..39).to_a.each_with_object([1]) { |i, obj| obj << (obj.last * 2)}
already_min = false

ans = 0
39.step(0, -1) do |digest|
  mask = 1 << digest
  ones = A.count { |str| (str & mask) > 0 }
  if ones * 2 >= N
    already_min = true if upper_bit[digest] == 1
    ans += beki_ary[digest] * ones
  else
    if already_min || (upper_bit[digest] == 1)
      ans += beki_ary[digest] * (N - ones)
    # https://atcoder.jp/contests/abc117/tasks/abc117_d
N, upper_bit = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
beki_ary = [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, 2147483648, 4294967296, 8589934592, 17179869184, 34359738368, 68719476736, 137438953472, 274877906944, 549755813888]
already_min = false

ans = 0
[39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0].each do |digest|
  mask = 1 << digest
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

      ans += beki_ary[digest] * ones
    end
  end
end
p ans
