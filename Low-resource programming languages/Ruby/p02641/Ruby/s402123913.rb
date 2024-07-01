x, n = gets.chomp.split(" ").map {|c| c.to_i}
if n == 0
  puts x
  exit
end
pl = gets.chomp.split(" ").map {|c| c.to_i}

min_num = 0
min_abs = 1000


pl.sort!
(0..101).each do |pi|
  p pi
  if pl.include?(pi)
    next
  end
  if min_abs > (x - pi).abs
    min_abs = (x - pi).abs
    min_num = pi
  end
end

puts min_num