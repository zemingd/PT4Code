n = gets.to_i
ans = n.times.map do
  gets.split.map(&:to_i).reverse
end.sort.inject(0) do |now, (deadline, required)|
  now += required
  if now > deadline
    break false
  end
  now
end

puts (if ans then 'Yes' else 'No' end)
