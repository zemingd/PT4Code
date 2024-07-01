class Entry
  attr_reader :name, :point, :index

  def initialize(name, point, index)
    @name = name
    @point = point
    @index = index
  end

  def <=>(other)
    return name <=> other.name if name != other.name
    other.point <=> point
  end
end

def guide_book(cities, points)
  entries = []
  cities.each_with_index { |city, i| entries << Entry.new(city, points[i], i + 1) }
  entries.sort!.map { |e| e.index }
end

n = gets.to_i
cities = []
points = []
n.times do
  city, point = gets.split
  cities << city
  points << point.to_i
end

puts guide_book(cities, points)