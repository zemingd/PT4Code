while true
  a,b = gets.chomp.split(" ").map{|x|x.to_i}
  exit if a == nil
  p a + b
end