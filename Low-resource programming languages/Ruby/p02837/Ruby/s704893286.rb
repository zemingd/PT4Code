require 'set'
N = gets.to_i

tuples = N.times.flat_map.with_index(1) { |_, id|
  gets.to_i.times.map {
    other, b = gets.chomp.split(' ').map(&:to_i)
    [id, other, b]
  }
}

layers = Set.new
semi_layers = {}

tuples.each do |(id, other, b)|
  if b == 1 && tuples.include?([other, id, 0])
    layers << id
  end
end

tuples.each do |(id, other, b)|
  if b == 0 && !tuples.include?([other, id, 1])
    if (layers & [id, other].to_set).empty?
      semi_layers[id] ||= Set.new
      semi_layers[id] << other
      semi_layers[other] ||= Set.new
      semi_layers[other] << id
    end
  end
end

semi_layers.sort_by { |_, v| v.size }.each do |id, others|
  next unless semi_layers.has_key?(id)

  others.each do |other|
    semi_layers.delete(other)
  end
end

puts N - (layers.size + semi_layers.size)
