n,k = gets.split.map &:to_i
a = gets.split.map &:to_i

cs = [0]
n.times do |i|
    cs[i+1] = cs[i] + a[i] + 1
end

ans = 0
0.upto(n-k) do |i|
    b = cs[i+k] - cs[i]
    ans = b if ans < b
end

puts ans/2.0