n = gets.to_i
t,a = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)
digr = 999
ans = 1000


for i in 0..h.size-1
    tmp = (t - h[i] * 0.006 - a).abs
    if digr > tmp
        digr = tmp
        ans = i+1
    end
end

p ans