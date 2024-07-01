gets
as = gets.split.map &:to_i

colors = []
kinds = 0
as.each do |a|
  if a <= 399
    colors[0] = true
  elsif a <= 799
    colors[1] = true
  elsif a <= 1199
    colors[2] = true
  elsif a <= 1599
    colors[3] = true
  elsif a <= 1999
    colors[4] = true
  elsif a <= 2399
    colors[5] = true
  elsif a <= 2799
    colors[6] = true
  elsif a <= 3199
    colors[7] = true
  else
    kinds += 1
  end
end

min = colors.count(true)
max = min + kinds
print min, ' ', max
