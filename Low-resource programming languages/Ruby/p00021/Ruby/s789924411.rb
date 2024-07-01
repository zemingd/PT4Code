n = STDIN.gets.chomp.to_i
n.times do
  x1, y1, x2, y2, x3, y3, x4, y4= STDIN.gets.chomp.split(" ").map { |item| item.to_f }
  m1 = (y2-y1)/(x2-x1)
  m2 = (y4-y3)/(x4-x3)
  if(m1 == m2) then
    puts "YES"
  else
    puts "NO"
  end
end