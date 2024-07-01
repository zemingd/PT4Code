require 'set'
N = gets.to_i

tuples = N.times.flat_map.with_index(1) { |_, id|
  gets.to_i.times.map {
    other, b = gets.chomp.split(' ').map(&:to_i)
    [id, other, b]
  }
}

layers = Set.new
semi_layers = Set.new

tuples.each do |(id, other, b)|
  if b == 1 && tuples.include?([other, id, 0])
    layers << id
  end
end

tuples.each do |(id, other, b)|
  if b == 0
    if (layers & [id, other].to_set).empty?
      if (semi_layers & [id, other].to_set).empty?
        semi_layers << id
        semi_layers << other
      end
    end
  end
end

puts N - (layers.size + semi_layers.size / 2)