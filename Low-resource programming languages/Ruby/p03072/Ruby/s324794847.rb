n = gets.chop.to_i
a = gets.split(/[\u00A0\s]/).map(&:to_i)
out = 0
max = 0
a.each do |i|
  if i >= max
    max = i
    out += 1
  end
end
puts out