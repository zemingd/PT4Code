n = gets.to_i
t,a = gets.split.map(&:to_f)
h = gets.split.map(&:to_f)
ans = [100000,0]
n.times do |i|
    if ans[0] > (a-t+h[i]*0.006).abs
        ans = [(a-t+h[i]*0.006).abs,i]
    end
end
puts ans[1]+1