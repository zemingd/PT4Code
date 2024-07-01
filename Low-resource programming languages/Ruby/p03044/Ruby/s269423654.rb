n = gets.chomp.to_i
uvws = (n - 1).times.map { gets.chomp.split(' ').map(&:to_i) }

odds = uvws.reject { |uvw| uvw[2].even? }
sorted = odds.sort_by { |uvw| uvw[0] }

blacks = []
whites = []

sorted.each do |uvw|
  u, v = uvw
  if blacks.include?(u)
    blacks << u
    whites << v
  else
    blacks << v
    whites << u
  end
end

evens = uvws.select { |uvw| uvw[2].even? }
unless evens.empty?
  u, v = evens[0]
  if blacks.include?(u)
    evens.each do |uvw|
      u, v = uvw
      blacks << u
      blacks << v
    end
  else
    evens.each do |uvw|
      u, v = uvw
      whites << u
      whites << v
    end
  end
end

results = (blacks.uniq.map { |i| [i, 0] } + whites.uniq.map { |i| [i, 1] }).sort_by { |ic| ic[0] }.map { |ic| ic[1] }
results.each do |r|
  puts r
end
