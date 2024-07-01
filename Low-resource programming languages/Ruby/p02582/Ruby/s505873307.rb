# https://atcoder.jp/contests/abc175/tasks/abc175_a

S = gets.chomp

ans = 3.downto(0).find do |k|
  pat = 'R' * k
  S =~ /#{pat}/
end

puts ans
