n, m = gets.split.map &:to_i
a = gets.split.map &:to_i
a.sort!
a.reverse!
s = a.sum
a[0...m].each do |b|
  if b*4*m<s
    puts :No
    exit
  end
end
puts :Yes