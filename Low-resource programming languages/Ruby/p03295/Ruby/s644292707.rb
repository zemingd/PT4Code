N, M = gets.chomp.split(" ").map(&:to_i)
ABm = (1..M).map { gets.chomp.split(" ").map(&:to_i) }

abm = ABm.sort{|a, b| b[0] <=> a[0]}
count = 0

loop do
  break if abm.length == 0
  bridge = abm[0][0] + 0.5
  abm = abm.select{|ab| !(ab[0] < bridge && bridge < ab[1])}
  count += 1
end

p count
