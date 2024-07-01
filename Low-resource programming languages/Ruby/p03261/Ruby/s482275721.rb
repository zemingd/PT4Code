# abc109 B
n = gets.to_i
w = n.times.map {
  gets.chomp.chars
}
puts w.uniq.size == w.size && w.each_cons(2).all?{|a,b|a[-1] == b[0]} ? 'Yes' : 'No'

