X = gets.chomp.to_i
ans = 1
(2..X).each do |p|
  (1..X**0.5).each do |b|
    if X >= b**p && ans <= b**p
      ans = b**p
    end
  end
end
puts ans