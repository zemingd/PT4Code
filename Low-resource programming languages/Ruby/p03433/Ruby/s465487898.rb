n = gets.to_i
cards = gets.chomp.split.map(&:to_i).sort
points = [0, 0]
member = 0
until cards.empty?
    points[member] += cards.pop
    member = 1 - member
end
puts points[0] - points[1]