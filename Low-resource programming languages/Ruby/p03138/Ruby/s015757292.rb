N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

ans = 0
r = [A.max, K].min.bit_length
(0...r).each{|i|
  wk = A.count{|a| a[i] == 1}
  ans += (1 << i) if wk < (N - wk)
}
(r...K.bit_length).each{|i|
  ans += (1 << i)
}
if ans > K then
  (K.bit_length-1).downto(0).each{|i|
    break if K[i] == 1 && ans[i] == 0
    ans -= (1 << i) if K[i] == 0 && ans[i] == 1
  }
end

puts A.inject(0){|r, a| r + (a ^ ans)}
