until (x = gets.chomp) == "0 0"
  h, w = x.split.map(&:to_i)
  h.times { puts '#' * w }
  puts
end