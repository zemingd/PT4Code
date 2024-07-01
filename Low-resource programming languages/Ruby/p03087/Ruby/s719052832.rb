n, q = gets.split.map(&:to_i)
chars = gets.chomp.split('')
edges = []
q.times do
  edges << gets.split.map(&:to_i)
end

ac_count = chars.map.with_index { |char, i|
  prev_i = i - 1
  prev_char = prev_i >= 0 ? chars[prev_i] : nil

  prev_char == 'A' && char == 'C' ? 1 : 0
}

cumerative_ac_count = ac_count.each_with_object([0]) { |count, counts|
  counts << counts.last + count
}

edges.each do |first, last|
  puts cumerative_ac_count[last] - cumerative_ac_count[first]
end
