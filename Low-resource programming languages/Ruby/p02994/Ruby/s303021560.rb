n,l = gets.split.map(&:to_i)
ary = []
n.times do |i|
  ary[i] = i + l
end
min = 300

n.times do |i|
  min = ary[i] if ary[i].abs < min.abs
end

puts ary.inject(:+) - min