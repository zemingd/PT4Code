gets
a = gets.chomp.split(' ')
b = []
a.each do |e|
  b << e
  b.reverse!
end
puts b.join(' ')