n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)

side = nil
while sticks.size > 0 do
  length = sticks.max
  co = sticks.count(length)
  if co >= 2
    if co >= 4
      puts length ** 2
      exit
    end
    unless side.nil?
      puts side * length
      exit
    end
    side = length
  end

  sticks.delete(length)
end

puts 0