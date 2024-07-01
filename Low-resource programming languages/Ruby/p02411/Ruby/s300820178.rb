points = []
while true
  line = STDIN.gets.chomp
  if line == "-1 -1 -1" then break end
  point = Array.new(3) { |i|  i = line.split(" ")[i].to_i}
  points << point
end

# print points

points.each do |point|
  grade = ""
  if point[0] == -1 || point[1] == -1 then
    grade = "F"
  elsif point[0] + point[1] >= 80 then
    grade = "A"
  elsif point[0] + point[1] >= 65 then
    grade = "B"
  elsif point[0] + point[1] >= 50 then
    grade = "C"
  elsif point[0] + point[1] >= 30 then
    if point[2] >= 50 then
      grade = "C"
    else
      grade = "D"
    end
  else
    grade = "F"
  end
  puts grade
end