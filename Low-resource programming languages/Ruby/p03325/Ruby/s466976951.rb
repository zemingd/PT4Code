n = gets.to_i
a = gets.split(" ").map{|t| t.to_i }
cnt = 0
a.each{|m|
  while (m & 1) == 0
    cnt += 1
    m /= 2
  end
}
puts cnt
