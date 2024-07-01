n = gets.to_i
p n
(1..n).each do |i|
  if i % 10 == 3 || i % 3 == 0
    print " " + i.to_s
  end
end