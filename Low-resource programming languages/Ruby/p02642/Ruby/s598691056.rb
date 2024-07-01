N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort
count = 0

(0...N).each do |i|
  z = 0
  if A[i] == A[i+1]
    z += 1
    next
  end
  (0...i).each do |j|
    if A[i] % A[j] == 0
      z += 1
      next
    end
  end
  if z == 0
    count += 1
  end
end

puts count