N,L=gets.split.map(&:to_i)
a=(L..L+N-1).to_a
puts a.inject(:+)-a.map{|e|abs(e)}.min