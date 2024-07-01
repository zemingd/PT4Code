n, k, q = gets.strip.split.map(&:to_i)
aa = readlines.map {|line| line.strip.to_i }

base = k-q

points = aa.group_by(&:itself)

#p aa
#p points

n.times do |i|
  point = points[i+1]&.length || 0
  if point+base > 0
    puts 'Yes'
  else
    puts 'No'
  end
end
