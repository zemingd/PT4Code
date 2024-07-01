N = gets.split.map(&:to_i)
H = N.times { gets.to_i }
border = H.delete_at(0)
puts H.count {|hotel| hotel >= border }