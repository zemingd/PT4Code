N, C = gets.split.map(&:to_i)
stc = N.times.map { gets.split.map(&:to_i) }
a = Array.new

stc.each do |s, t, c|
  a += ((s*2-1)..(t*2)).to_a
end
max = a.group_by(&:itself).values.max_by{ |v| v.size }

p max.size
