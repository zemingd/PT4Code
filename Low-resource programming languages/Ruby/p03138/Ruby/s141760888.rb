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
N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

upper_bit = K.to_s(2)
zero_str = (0..40).to_a.each_with_object([]) { |i, obj| obj << '0' * i }.reverse
zero_fill_strA = A.map { |i| (t = i.to_s(2)) && "#{zero_str[t.size]}#{t}" }
zero_fill_upper_bit =  "#{zero_str[upper_bit.size]}#{upper_bit}"

one = '1'
beki_ary = (1..39).to_a.each_with_object([1]) { |i, obj| obj << (obj.last * 2)}.reverse
already_min = false

ans = 0
0.step(39) do |digest|
  ones = zero_fill_strA.count { |str| str[digest] == one }
  if ones * 2 >= N
    already_min = true if zero_fill_upper_bit[digest] == one
    ans += beki_ary[digest] * ones
  else
    if already_min || zero_fill_upper_bit[digest] == one
      ans += beki_ary[digest] * (N - ones)
    else
      ans += beki_ary[digest] * ones
    end
  end
end
p ans