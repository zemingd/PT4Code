n = gets.to_i
boss_a = gets.chomp.split.map &:to_i

counter = Array.new(n) { 0 }

boss_a.each do |boss_id|
  counter[boss_id - 1] += 1

end

puts counter.join("\n")
