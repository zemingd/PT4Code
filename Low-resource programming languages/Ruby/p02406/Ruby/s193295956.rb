n = gets.to_i
(1..n).each do |i|
  if i % 3 == 0 || i.to_s.index("3")
    print " " + i.to_s
  end
end
print "\n"