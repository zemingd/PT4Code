# frozen_string_literal: true

n, w = gets.split.map(&:to_i)

table = Array.new(w + 1, -1)
table[0] = 0
max_wei = 0
n.times do
  weight, value = gets.split.map(&:to_i)

  (0..max_wei).each do |wei|
    if table[wei] != -1 && wei + weight <= w && table[wei + weight] < table[wei] + value
      table[wei + weight] = table[wei] + value
      max_wei = wei + weight
    end
  end
end

puts table.max
