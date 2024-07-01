a, b = gets.split.map(&:to_i)

lower = [a * 100 / 8, b * 10].max
upper = [(a+1) * 100 / 8, (b+1) * 10].min

(lower..upper).each do |i|
  if i * 8 / 100 == a && i / 10 == b
    puts i
    exit
  end
end

puts -1
