def include3(i, x)
  if x % 10 == 3
    print " #{i}"
  elsif x / 10 != 0
    include3(i, x / 10)
  end
end

n = STDIN.gets.chomp.to_i
(1..n).each do |i|
  if i % 3 == 0
    print " #{i}"
  else
    include3(i, i)
  end
end
print "\n"