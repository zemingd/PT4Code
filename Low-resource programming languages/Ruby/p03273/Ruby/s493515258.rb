h, w = gets.split.map(&:to_i)
matrix = h.times.map{ gets.chomp.chars }

loop do
  x = (0...h).find do |i|
    matrix[i].all?{|cell| cell == '.'}
  end
  unless x.nil?
    matrix.delete_at(x)
    h -= 1
    next
  end

  y = (0...w).find do |j|
    (0...h).all?{|i| matrix[i][j] == '.'}
  end
  unless y.nil?
    (0...h).each{|i| matrix[i].delete_at(y)}
    w -= 1
    next
  end
  break
end

matrix.each{|row| puts row.join}