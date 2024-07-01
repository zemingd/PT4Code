loop do
  h, w = gets.chomp.split(/\s/).map(&:to_i)
  break if h == 0 || w == 0
  h.times do
    w.times do
      print "#"
    end
    print "\n"
  end
  puts ''
end