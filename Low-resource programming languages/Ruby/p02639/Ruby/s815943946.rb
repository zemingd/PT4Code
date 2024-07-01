x_arr = gets.chomp.split(" ").map(&:to_i)

x_arr.each_with_index do |x, i|
  if x == 0
    puts i + 1
    exit
  end
end