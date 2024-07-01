x = gets.split.map(&:to_i)
x.each_with_index do |v, i|
  if v == 0
    puts i + 1
  end
end