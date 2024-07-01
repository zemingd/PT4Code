n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)

a.each { |i| h[i] += 1 }
side = h.select { |k, v| v >= 2 }.sort_by { |k, v| -k }

if side.size == 0 || (side.size == 1 && side[0][1] != 4)
  puts 0
else
  puts side[0][1] >= 4 ? side[0][0]**2 : side[0][0] * side[1][0]
end
