n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

ans = Array.new(n)

a.each.with_index(1) do |v, i|
  ans[v] = i
end

puts ans[1..-1].join(' ')