n = gets.to_i
t,a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = [0,1000000]
n.times do |i|
    ans = [i,(a-t+0.006*h[i]).abs] if (a-t+0.006*h[i]).abs < ans[1]
end
puts ans[0]+1