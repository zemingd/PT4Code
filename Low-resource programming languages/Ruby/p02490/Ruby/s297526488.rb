loop do
  list = gets.split
  break if list[0] == "0" && list[1] == "0"
  list.map!{|i| i.to_i}.sort!
  printf("%d %d\n", list[0], list[1])
end