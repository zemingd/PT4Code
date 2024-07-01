a1 = gets.split.map(&:to_i)
a2 = gets.split.map(&:to_i)
a3 = gets.split.map(&:to_i)

a = [*a1, *a2, *a3]

n = gets.to_i
n.times do
  b = gets.to_i
  (0...a.size).to_a.each do |i|
    a[i] = 0 if a[i] == b
  end
end

bingo = false
bingo = true if a[0].zero? && a[1].zero? && a[2].zero?
bingo = true if a[3].zero? && a[4].zero? && a[5].zero?
bingo = true if a[6].zero? && a[7].zero? && a[8].zero?
bingo = true if a[0].zero? && a[4].zero? && a[8].zero?
bingo = true if a[2].zero? && a[4].zero? && a[6].zero?

puts bingo ? 'Yes' : 'No'
