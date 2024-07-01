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
  ones = A.count { |str| str[digest] == 1 }
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
