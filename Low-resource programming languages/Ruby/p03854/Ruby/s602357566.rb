str = gets.chomp
puts /\A(dream|dreamer|erase|eraser)*\z/.match?(str) ? "YES" : "NO"
