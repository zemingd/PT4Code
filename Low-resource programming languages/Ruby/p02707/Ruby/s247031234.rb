n = gets.to_i
a = gets.split.map(&:to_i)
ans = Array.new(n, 0)
a.each do |i|
    ans[i - 1] += 1
end
puts ans