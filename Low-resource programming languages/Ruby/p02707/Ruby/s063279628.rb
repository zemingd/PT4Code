n = gets.to_i

ans = Array.new(n, 0)
gets.split.each do |e|
    ans[e.to_i - 1] += 1
end

puts ans