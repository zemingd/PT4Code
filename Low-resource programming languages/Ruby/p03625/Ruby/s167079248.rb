n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
side = []

a = a.sort.reverse
tmp = 0

a.each do |o|
  if a.count(o) >= 4
    puts o * o
    break
  elsif a.count(o) >= 2
    next if tmp == o
    side << o
    if side.size == 2
      puts side[0] * side[1]
      break
    end
    tmp = o
  end
end

puts 0 if side.size < 2
