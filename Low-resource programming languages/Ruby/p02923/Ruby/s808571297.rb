N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)
move = 0
max = 0
(1..H.count-1).each do |i|
  if H[i] <= H[i-1]
    move += 1
    max = move if move > max
  else
    move = 0
  end
end
puts max
