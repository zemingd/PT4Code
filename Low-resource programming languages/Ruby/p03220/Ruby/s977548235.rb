n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

ans = 0
m = 10000000000
h.each_with_index do |h,i|
    diff = (a - (t - h * 0.006)).abs
    if m > diff
        m = diff
        ans = i + 1
    end
end

p ans