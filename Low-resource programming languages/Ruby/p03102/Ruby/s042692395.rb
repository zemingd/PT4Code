numbers_of_line, count_of_numbers, c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ar = []
for i in 1..numbers_of_line do
  ar << gets.split.map(&:to_i)
end

count = 0
ar.each_with_index do |a, i|
  r = 0
  a.each_with_index do |a, i|
    r += a * b[i]
  end
  count += 1 if r + c > 0
end
p count