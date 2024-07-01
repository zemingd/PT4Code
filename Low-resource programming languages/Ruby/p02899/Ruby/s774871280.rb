n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(n, 0)
a.each_with_index do |n, i|
    ans[n-1] = i+1
end
puts ans.join(" ")