a,B,c,D = gets.split.map &:to_i
loop {
  puts :Yes or exit  if 0 >= c-=B
  puts :No or exit  if 0 >= a-=D
}