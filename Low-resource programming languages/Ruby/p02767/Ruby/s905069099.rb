n = gets.to_i
coords = gets.split.map(&:to_i)
result = []
(coords.min).upto(coords.max) do |i|
  tmp = 0
  coords.each do |coord|
    tmp += (coord - i) * (coord - i)
  end
  result << tmp
end
puts result.min