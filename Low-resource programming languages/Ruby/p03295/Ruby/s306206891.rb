N, M = gets.chomp.split(" ").map(&:to_i)
ABm = (1..M).map { gets.chomp.split(" ").map(&:to_i) }

abm = ABm.sort_by{|a, b| b}
count = 0
bridge = -1

abm.each do |a, b|
  next if a <= bridge
  bridge = b - 1
  count += 1
end

p count
