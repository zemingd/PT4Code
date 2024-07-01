a = gets.split.map(&:to_f)
b = (a[0]/a[1]).round
c = (a[0]%a[1]).round
d = "%.10f" % "#{a[0]/a[1]}"
puts "#{b} #{c} #{d}"