n = gets.chop.to_i
bl = gets.chop.split.map(&:to_i)
al = []

n.times do |i|
  if i.zero?
    al.push(bl[i])
  else
    al.push(bl[(i - 1)..i].min)
  end
end

puts al.inject(&:+)
