n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)

side = nil
n.times do |i|
  length = sticks.max
  if length.nil?
    puts 0
    exit
  end

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