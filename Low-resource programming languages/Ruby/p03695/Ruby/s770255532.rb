n = gets.to_i
a = gets.split.map(&:to_i)

rate = Hash.new(0)
a.each do |i|
  rate[[i, 3200].min / 400] += 1
end

wild = rate.delete(8)
min = rate.keys.size
min = 1 if min == 0 && wild
max = rate.keys.size
max += wild if wild

puts "#{min} #{max}"
