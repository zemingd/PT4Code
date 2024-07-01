N, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
if as.uniq.count <= K
  puts 0
else
  as << nil
  previous = nil
  count = 0
  as = as.map.with_index { |a, i|
    if a == previous
      count += 1
      nil
    else
      output = previous ? { num: previous, count: count } : nil
      previous = a
      count = 1
      output
    end
  }.compact.sort { |a, b| b[:count] <=> a[:count] }
  rewrite = 0
  as[K..-1].map { |a| rewrite += a[:count] }
  puts rewrite
end
