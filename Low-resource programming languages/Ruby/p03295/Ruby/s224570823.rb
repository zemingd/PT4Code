n,m = gets.split.map(&:to_i)
q = m.times.map{gets.split.map{|i|i.to_i-1}}.sort_by{|i,j|i}.push([0,0])
l = 1000000
ans = 0
m.times do |i|
    l = q[i][1] if l > q[i][1]
    if l <= q[i][0]
        ans += 1
        l = q[i+1][1]
    end
end
p ans+1