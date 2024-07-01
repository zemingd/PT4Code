n = gets.to_i
nums = gets.split.map(&:to_i)

res = []
nums.each_with_index do |num, idx|
  if idx % 2 == 0
    res.push(num)
  else
    res.unshift(num)
  end
end
res.reverse! if n.odd?
puts res.join(' ')
