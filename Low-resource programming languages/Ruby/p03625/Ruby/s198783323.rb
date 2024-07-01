n = gets.chomp.to_i
sticks = gets.chomp.split(" ").map(&:to_i)
lengths = sticks.uniq
memo = []

side = nil
(lengths.size).times do |i|
  length = lengths[-i-1]
  num = sticks.count(length)

  if num >= 2
    unless side.nil?
      puts side * length
      exit
    end
    side ||= length
    if num >= 4
      puts length ** 2
      exit
    end
  end
end

puts 0