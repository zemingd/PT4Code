n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

beated_monsters = 
  b.map.with_index do |n, i|
    beated_count = a[i] + a[i + 1] > n ? n : a[i] + a[i + 1]
    if a[i] < n
      a[i + i] = n - a[i] > 0 ? a[i + 1] : 0
    end
    beated_count
  end

puts beated_monster.inject(:+)