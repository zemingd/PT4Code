a = gets.to_i
s = gets.split.map(&:to_i)

x = 0
s.each do |i|
  if i % 2 == 0
    if i % 5 == 0 || i % 3 == 0
      next
    else
      x += 1
    end
  end
end

puts x == 0 ? "APPROVED" : "DENIED"