n,l=gets.split.map &:to_i

eat = []
n.times do |i|
  eat << (l + i)
end

ee = eat[0].abs
num = 0
eat.each_with_index do |e,i|
  if e.abs < ee
    ee = e.abs
    num = i
  end
end

sum = 0
eat.each { |i| sum += i }

puts sum - eat[num]