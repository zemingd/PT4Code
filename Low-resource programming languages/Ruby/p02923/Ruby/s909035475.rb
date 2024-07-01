gets
p = gets.chomp.split(" ").map(&:to_i)
c = 0
max = 0
p.inject do |i,j|
  if i >= j
    c += 1
  	max = c if max < c
  else
    c = 0
  end
  j
end
print("#{max}")