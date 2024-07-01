x = gets.split.map(&:to_i)

x.each_with_index do |_x, i|
  if i + 1 != _x
    puts i + 1
    exit
  end
end