loop do
  x, y  = gets.split.map(&:to_i)

  if x == 0 && y == 0
    break
  else
    case x <=> y
    when -1, 0
      a, b = x, y
    when 1
      a, b = y, x
    end
    puts "#{a} #{b}"
  end
end