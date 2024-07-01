# frozen_string_literal: true

n, w = gets.split.map(&:to_i)

table = []
n.times do
  weight, value = gets.split.map(&:to_i)

  new_rows = [[weight, value]]
  table.each do |row|
    new_rows.push([row[0] + weight, row[1] + value]) if row[0] + weight <= w
  end

  table.concat new_rows
end

puts table.max_by { |row| row[1] }[1]
