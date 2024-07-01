loop {
  n = gets.chomp!
  if n == "0 0" then break end
  puts n.split(" ").map{|x| x.to_i}.sort.join(" ")
}