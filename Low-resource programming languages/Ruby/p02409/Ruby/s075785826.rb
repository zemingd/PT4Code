# frozen_string_literal: true

mansion = Array.new(4).map { Array.new(3).map { Array.new(10, 0) } }
n = readline.to_i
n.times do
  b, f, r, v = readline.split(' ').map(&:to_i)
  mansion[b - 1][f - 1][r - 1] += v
end
count = 0
mansion.each do |building|
  building.each do |floor|
    puts ' ' + floor.join(' ')
  end
  count += 1
  puts '#' * 20 unless count == 4
end

