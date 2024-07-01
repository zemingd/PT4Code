A = gets.split.map(&:to_i)
(1..5).each do |i|
  if A[i-1] == 0
    puts i
    return
  end
end
