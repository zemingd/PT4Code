a = gets.strip.split('')
r  = %w[A C G T]
l = 0
c = 0
a.each_with_index do |char, i|
  if r.include? char
    c += 1
  end
  if (!r.include?(char)) || (i == a.size - 1)
    l = c if c > l
    c = 0
  end
end
puts l
