# https://atcoder.jp/contests/abc162/tasks/abc162_c


K = gets.to_i

ans = 0

(K).times do |a|
  (K).times do |b|
    (K).times do |c|
      ans += (a+1).gcd(b+1).gcd(c+1)
    end
  end
end

puts ans
