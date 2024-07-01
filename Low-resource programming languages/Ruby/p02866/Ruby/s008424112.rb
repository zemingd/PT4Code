MOD=998244353
N=gets.to_i
D=gets.split.map(&:to_i)

data = Array.new(N, 0)
max=0
flag = false
D.each do |d|
     data[d] += 1
     max = d if d > max
     flag=true if d == 0
end


ans=1
(1..max).each do |i|
    t = data[i]
    if t == 0
        flag = false
        break
    end
    k = data[i-1]
    t.times { |i| ans = (ans * k) % MOD }
end
if flag
    puts ans
else
    puts 0
end
