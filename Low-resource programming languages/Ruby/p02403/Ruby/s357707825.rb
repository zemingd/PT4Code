loop do
  h, w = gets.split.map(&:to_i)
  break if h.zero? && w.zero?

  (1..h).each do
    (1..w).each {print '#'}
    puts
  end
  puts
end

