n=gets.to_i
a=gets.split.map(&:to_i)
c = 0
a.each do |s|
  while s % 2 == 0
    c += 1
    s /= 2
  end
end
p c