n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

beated_monsters = 
  b.map.with_index do |saver, i|
    beated_count = (a[i] + a[i + 1] > saver ? saver : a[i] + a[i + 1])
    if a[i] < beated_count
      (a[i + 1] -= beated_count) > 0 || a[i + 1] = 0
    end
    beated_count
  end

puts beated_monsters.inject(:+)
