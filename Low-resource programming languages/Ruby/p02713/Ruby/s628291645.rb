"
ABC162C
https://atcoder.jp/contests/abc162/tasks/abc162_c
"

K = gets.to_i
ans = 0
1.upto(K) do |a|
  1.upto(K) do |b|
    1.upto(K) do |c|
      ans = ans + a.gcd(b.gcd(c))
    end
  end
end
puts ans