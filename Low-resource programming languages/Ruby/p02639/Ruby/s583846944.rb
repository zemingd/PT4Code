array = gets.split(' ').map(&:to_i)

array.each_with_index do |a, index|
  if a == 0
    puts index + 1
  end
end