MOD=998244353
N=gets.to_i
D=gets.split.map(&:to_i)

data = Array.new(N, 0)
data[0] = 1
zero = 0
max=0

D.each do |d|
    if d == 0
        zero += 1
    else
        data[d] += 1
        max = d if d > max
    end
end

flag = true
ans=1
(1..max).each do |i|
    t = data[i]
    if t == 0
        flag = false
        break
    end
    k = data[i-1]
    t.times { ans = (ans * k) % MOD }
end

if flag && zero == 1
    puts ans
else
    puts 0
end
