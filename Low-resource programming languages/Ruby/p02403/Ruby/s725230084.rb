while true
  w,h = gets.chomp.split(" ").map &:to_i
  break if w == 0 and h == 0

  h.times {
   w.times { print("#") }
   puts
  }

  puts
end