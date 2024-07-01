a = gets.split.map(&:to_i)

a.each_with_index do |x, i|
  if x == 0
    puts i + 1
  end
end
