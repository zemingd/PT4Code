n = gets.to_i
a = gets.split.map(&:to_i)

ans = Array.new(n)
a.each.with_index(1) do |ai, i|
  ans[ai - 1] = i
end

puts ans.join(' ')
