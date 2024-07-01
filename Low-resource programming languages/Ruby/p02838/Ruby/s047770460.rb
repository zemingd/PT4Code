n = gets.to_i
a = gets.split.map(&:to_i)
s = 0
(n-1).times do |i|
  (i+1).upto(n-1) do |j|
    s += a[i] ^ a[j]
  end
end
puts s % 1000000007
