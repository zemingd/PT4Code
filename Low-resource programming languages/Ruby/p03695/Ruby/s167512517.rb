gets
as = gets.split.map &:to_i

colors = []
kinds = 0
as.each do |a|
  if 1 <= a and a <= 399
    colors.push(1)
  elsif a <= 799
    colors.push(2)
  elsif a <= 1199
    colors.push(3)
  elsif a <= 1999
    colors.push(4)
  elsif a <= 2399
    colors.push(5)
  elsif a <= 2799
    colors.push(6)
  elsif a <= 3199
    colors.push(7)
  else
    kinds += 1
  end
end

min = colors.uniq.size
max = min + kinds
print min, ' ', max
