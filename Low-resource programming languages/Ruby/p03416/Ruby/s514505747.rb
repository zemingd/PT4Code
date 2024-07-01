A, B = gets.split(' ').map(&:to_i)
cnt = 0
A.upto(B) do |i|
  if i.to_s == i.to_s.reverse
    cnt += 1
  end
end
puts cnt