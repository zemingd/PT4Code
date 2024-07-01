n,k = gets.split.map(&:to_i)
s = gets.chomp
a = [1]
m = 1
for i in 1..n-1
    if s[i] == s[i-1]
        a[-1] += 1
    else
        a << 1
    end
end
a.unshift(0) if s[0] == "0"
a.push(0) if s[-1] == "0"
t = a.size
sums = Array.new(t+1,0)
ans = 0
t.times do |i|
    sums[i+1] = sums[i]+a[i]
    # ans = a[i] if i%2 == 0 && ans < a[i]
end
for i in 0..t
    r = i*2+k*2+1
    r = t if r > t
    ret = sums[r]-sums[i*2]
    ans = ret if ans < ret
    break if r == t
end
puts ans