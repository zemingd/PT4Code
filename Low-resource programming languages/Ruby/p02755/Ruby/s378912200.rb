a, b = gets.split(" ").map(&:to_i)
20000.times do |i|
  if (0.08 * i).floor == a && (0.1 * i).floor == b
    puts i
    break
  end
  puts -1 if i == 19999
end