n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = Array.new(n,0);
m.times do |i|
    a,b = gets.split.map(&:to_i)
    if h[a-1] <= h[b-1]
        ans[a-1] = 1
    end
    if h[a-1] >= h[b-1]
        ans[b-1] = 1
    end
end
ans.delete(1)
puts ans.length
