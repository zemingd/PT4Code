require 'set'
N = gets.to_i

tuples = N.times.flat_map.with_index(1) { |_, id|
  gets.to_i.times.map {
    other, b = gets.chomp.split(' ').map(&:to_i)
    [id, other, b]
  }
}

liars = Set.new
semi_liars = {}

tuples.each do |(id, other, b)|
  if b == 1 && tuples.include?([other, id, 0])
    liars << id
  end
end

tuples.each do |(id, other, b)|
  if b == 0 && !tuples.include?([other, id, 1])
    unless liars.include?(other)
      semi_liars[id] ||= Set.new
      semi_liars[id] << other
    end

    unless liars.include?(id)
      semi_liars[other] ||= Set.new
      semi_liars[other] << id
    end
  end
end

semi_liars.sort_by { |_, v| v.size }.reverse.each do |id, others|
  next unless semi_liars.has_key?(id)

  layers << id
  semi_liars.delete(id)

  others.each do |other|
    semi_liars.delete(other)
  end
end

puts N - liars.size
