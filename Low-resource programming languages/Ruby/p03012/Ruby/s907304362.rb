n = gets.to_i
w = gets.split.map(&:to_i)
ans = 1e9
0.upto(n-2) do |i|
    w1 = w[0..i]
    w2 = w[i+1..n-1]
    s1 = w1.inject(:+)
    s2 = w2.inject(:+)
    ans = (s1-s2).abs if (s1-s2).abs < ans
end
puts ans