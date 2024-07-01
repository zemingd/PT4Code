while true
  a,b = gets.chomp.split(" ").map{|x|x.to_i}
  exit if a == nil
  puts (a + b).to_s.size
end