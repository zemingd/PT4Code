# ABC 166 C - Peaks
# https://atcoder.jp/contests/abc166/tasks/abc166_c

# AC
# https://atcoder.jp/contests/abc166/submissions/12807993

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

  def connected_to?(observatory)
    connected_observatories.include?(observatory)
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

  observatory_a.connect_to(observatory_b) unless observatory_a.connected_to?(observatory_b)
  observatory_b.connect_to(observatory_a) unless observatory_a.connected_to?(observatory_a)
end

puts observatories.select(&:good?).size
