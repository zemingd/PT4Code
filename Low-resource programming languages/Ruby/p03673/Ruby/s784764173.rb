n = gets.chomp.to_i
a = gets.split.map(&:to_i)
b = []
a.each do |e|
  b.push e
  b.reverse!
end
puts b.join(' ')
