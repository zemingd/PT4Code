n, k = gets.chop.split(" ").map(&:to_i)
ans =
    Array.new(n) do
      Array.new(2)
    end
n.times do |i|
  ans[i][0], ans[i][1] = gets.chop.split(" ").map(&:to_i)
end

#ans.sort!
ans.sort_by! { |i| i[0]}

n.times do |i|
  k = k - ans[i][1]
  if k <= 0
    puts ans[i][0]
    break
  end
end
