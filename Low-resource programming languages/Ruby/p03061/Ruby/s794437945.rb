N=gets.to_i
a=gets.split.map(&:to_i)
left = Array.new(N+1, 0)  # left[i]:  [0, i)のgcd
right = Array.new(N+1, 0) # right[i]: [i, N)のgcd
N.times do |i|
    left[i+1] = a[i].gcd(left[i])
end
(0..N-1).to_a.reverse.each do |i|
    right[i] = a[i].gcd(right[i+1])
end
ans = 0
N.times do |i|
    l = left[i]
    r = right[i+1]
    ans = [ans, l.gcd(r)].max
end
puts ans

