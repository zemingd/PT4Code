while true

  input = gets.split(/\s/).map { |t| t.to_i }
  x = input[0]
  y = input[1]
  if x == y break
  if y > x
    puts "#{y} #{x}"
  else
    puts "#{x} #{y}"
  end
end