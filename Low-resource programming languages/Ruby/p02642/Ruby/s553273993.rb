_ = gets.chomp
l = gets.chomp.split(" ").map(&:to_i)

result = l.select.with_index do |num, i|
  ret = l.select.with_index do |n2, j|
    next true if i == j
    ans = num / n2.to_f
    next false if ans.to_i == ans
    next true
  end
  next ret.length == l.length
end

puts result.length
