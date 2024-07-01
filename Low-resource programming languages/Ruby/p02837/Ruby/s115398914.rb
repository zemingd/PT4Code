require 'set'
N = gets.to_i

tuples = N.times.flat_map.with_index(1) { |_, id|
  gets.to_i.times.map {
    other, b = gets.chomp.split(' ').map(&:to_i)
    [id, other, b]
  }
}

liars = Set.new
tuples.each do |(id, other, b)|
  # 相手は正直だと言っているのに、その相手から嘘つきと言われている場合、嘘つき確定
  if b == 1 && tuples.include?([other, id, 0])
    liars << id
  end
end

semi_liars = {}
tuples.each do |(id, other, b)|
  if b == 0 && !tuples.include?([other, id, 1])
    # 自分が嘘つき確定なら、もういい
    next if liars.include?(id)

    # 相手が嘘つき確定なら、もういい
    next if liars.include?(other)
    
    # 嘘つき候補に入れる
    semi_liars[id] ||= Set.new
    semi_liars[id] << other
    semi_liars[other] ||= Set.new
    semi_liars[other] << id
  end
end

semi_liars.sort_by { |_, v| v.size }.reverse.each do |id, _|
  next unless semi_liars.has_key?(id)

  layers << id

  semi_liars[id].each do |other|
    semi_liars[other] = semi_liars[other] - [id].to_set
  end

  semi_liars.delete(id)

  semi_liars.each do |k, v|
    semi_liars.delete(k) if v.empty?
  end
end

puts N - liars.size