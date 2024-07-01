n=gets.to_i
m=gets.split.map(&:to_i).sort.reverse
a=[0]
b=[0]
m.each do |e|
  if a.inject(:+) > b.inject(:+)
    b << e
  else
    a << e
  end
end

puts (a.inject(:+)-b.inject(:+)).abs
