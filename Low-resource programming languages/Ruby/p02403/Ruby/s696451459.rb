loop{
  h, w = gets.split.map &:to_i
  break if h==0&&w==0
  puts ([?#*w]*h).join ?\n
  puts
}
