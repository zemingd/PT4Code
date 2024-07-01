n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sorted = a.sort
maxs = [sorted.pop]
m.times do
  index = maxs.index(maxs.max)
  maxs[index] /= 2
  if !sorted.empty? && maxs.max < sorted.last
    maxs.push(sorted.pop)
  end
end

p sorted.inject(:+).to_i + maxs.inject(:+).to_i


