a, b = gets.split.map(&:to_i)
puts (a..b).to_a.map{ |i| i.to_s.split('') }.select { |e| e == e.reverse }.size
