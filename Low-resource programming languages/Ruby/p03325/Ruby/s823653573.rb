n=gets.to_i
d=gets.chomp.split(" ").map(&:to_i);
c = 0
d.each do |i|
  while i % 2 == 0 do
    i /= 2
    c += 1
  end
end
puts c
