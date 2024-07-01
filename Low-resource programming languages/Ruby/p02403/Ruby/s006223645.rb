loop {
  h, w = gets.split(" ").map(&:to_i)
  if h ==0 && w == 0
      break
  end
  for i in 1..h
      for n in 1..w
          print "#"
      end
      puts "\n"
  end
  puts "\n"
}