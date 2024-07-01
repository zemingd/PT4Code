N = gets.to_i
A = gets.split.map(&:to_i)

ans = Hash.new

A.each.with_index(1) do |a, i|
  ans[i] = a
end

puts ans.sort_by { |_, v| v }.map(&:first).join(' ')
