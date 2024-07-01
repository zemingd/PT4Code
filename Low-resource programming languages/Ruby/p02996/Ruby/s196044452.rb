n = gets.to_i
ab =
  readlines.map do |i|
    i.chomp.split.map(&:to_i)
  end.to_a.sort{|a,b|a[1]<=>b[1]}

t = 0
can = true
ab.each do |time, dl|
  t += time
  if t > dl
    can = false
    break
  end
end
puts can ? 'Yes' : 'No'
