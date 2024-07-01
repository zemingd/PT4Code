N, M = gets.chomp.split.map(&:to_i)

list = [*1..30]

N.times do
  _, *a = gets.chomp.split.map(&:to_i)

  list &= a
end

puts list.size
