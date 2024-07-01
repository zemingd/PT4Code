n = gets.to_i
hash = Hash.new(0)
n.times { hash[gets.chomp.each_char.sort.inject(&:+)] += 1 }
puts hash.values.map { |v| v*(v-1)/2 }.inject(&:+)