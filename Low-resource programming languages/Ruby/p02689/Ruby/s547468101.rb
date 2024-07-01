n, m = gets.split(/ /).map(&:to_i)
h = gets.split(/ /).map(&:to_i)
ab_s = Array.new(m) { gets.split(/ /).map(&:to_i) }

class Observatory
  def initialize(index, height)
    @index = index
    @height = height

    @connected_observatories = []
  end

  attr_reader :height, :connected_observatories

  def connect_to(observatory)
    connected_observatories.push(observatory)
  end

  def good?
    connected_observatories.empty? || connected_observatories.all? { |observatory| height > observatory.height }
  end
end

observatories = h.map.with_index(1) { |height, i| Observatory.new(i, height) }

ab_s.each do |ab|
  a, b = ab

  observatory_a = observatories[a - 1]
  observatory_b = observatories[b - 1]

  observatory_a.connect_to(observatory_b)
  observatory_b.connect_to(observatory_a)
end

puts observatories.select(&:good?).size
