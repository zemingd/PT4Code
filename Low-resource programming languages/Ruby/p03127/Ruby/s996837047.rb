_ = gets.chomp

monsters = gets.chomp.split(" ").map(&:to_i)


while monsters.size > 1 do
  min_m = monsters.min
  min_m_index = monsters.index(min_m)

  monsters.each_with_index do |monstor, index|
    if index != min_m_index
      monsters[index] = monstor % min_m
    end
  end

  monsters.delete(0)
end

p monsters.first