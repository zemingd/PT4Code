dishes = []
5.times do
  dishes.push(gets.to_i)
end

dishes = dishes.sort_by{|i| (i - 1) % 10}

ans = dishes[0]
(1..4).each do |i|
  if dishes[i] % 10 == 0
    ans += dishes[i]
  else
    ans += (dishes[i] + (10 - dishes[i] % 10))
  end
end

puts ans