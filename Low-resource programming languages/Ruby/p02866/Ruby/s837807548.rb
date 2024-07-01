MOD=998244353
N=gets.to_i
D=gets.split.map(&:to_i)

data = Array.new(N, 0)
max=0
D.each do |d|
     data[d] += 1
     max = d if d > max
end

flag = true
ans=1
(0..max).each do |i|
    t = data[i]
    if t.nil?
        flag = false
        break
    end
    next if i == 0
    k = data[i-1]
    t.times { |i| ans = (ans * k) % MOD }
end
if flag
    puts ans
else
    puts 0
end
