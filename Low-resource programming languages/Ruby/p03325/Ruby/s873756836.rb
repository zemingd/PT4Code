_ = $stdin.gets
arr = $stdin.gets.chomp.split(" ").map{ |a| a.to_i }
puts arr.map{ |a|
  b = 0
  while a & 1 == 0 do
    b += 1 
    a /= 2
  end
  b
}.inject(:+)
	