n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = Array.new(n)
as.each_with_index do |a,i|
  ans[a-1] = i + 1
end
puts ans.join(" ")