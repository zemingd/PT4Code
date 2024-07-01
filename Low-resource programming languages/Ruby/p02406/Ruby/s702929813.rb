n = gets.to_i
arr = []
(1..n).each do |i|
  if i % 3 == 0 || i.to_s.index("3")
    arr << i
  end
end
puts arr.join(" ")