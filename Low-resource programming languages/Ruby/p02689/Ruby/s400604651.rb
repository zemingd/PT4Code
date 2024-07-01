n,m = gets.chomp.split(' ').map(&:to_i)
heights = gets.chomp.split(' ').map(&:to_i)
ans = [*(1..n)]
subtract = []
m.times do
    a,b = gets.chomp.split(' ').map(&:to_i)
    if (heights[a-1] < heights[b-1])
        subtract << a
    elsif (heights[a-1] > heights[b-1])
        subtract << b
    elsif heights[a-1] == heights[b-1]
        subtract << a
        subtract << b
    end
end
ans -= subtract
puts ans.size