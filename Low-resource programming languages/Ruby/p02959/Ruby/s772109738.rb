gets
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

total = 0
prev = 0
a.each_with_index do |x, i|
  if (b[i].to_i + prev) - x >= 0
    total += x
    if prev - x < 0
      prev = prev + b[i].to_i - x
    else
      prev = b[i].to_i
    end
  else
    total += (b[i].to_i + prev)
    prev = 0
  end
end

puts total
