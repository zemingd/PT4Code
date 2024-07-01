n = gets.to_i
a = gets.split.map(&:to_i)
m = 10**9 + 7

hoge = []
(0..n-2).each do |i|
  j = i + 1
  (j..n-1).each do |k|
    xor = a[i] ^ a[j]
    hoge << xor
    j += 1
  end
end
puts hoge.inject(0){|s, n| s + n}
