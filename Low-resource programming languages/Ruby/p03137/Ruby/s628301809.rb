# frozen_string_literal: true

def sum_distance(attributes = {})
  n = attributes[:N]
  m = attributes[:M]
  points = attributes[:points]

  points.sort!

  distances = []

  if m == 1
    puts 0
    exit
  end

  (0..m - 2).each do |t|
    length = (points[t] - points[t + 1]).abs
    distances.push(length)
  end

  (n - 1).times.each do
    distances.delete(distances.max)
  end

  distance_counter = 0
  distances.each do |num|
    distance_counter += num
  end

  distance_counter
end
n, m = gets.chomp.split.map(&:to_i)
points = gets.chomp.split.map(&:to_i)
puts sum_distance(points: points, N: n, M: m)
