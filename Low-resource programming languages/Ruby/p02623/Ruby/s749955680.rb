lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
M = lines[0][1]
K = lines[0][2]

can_read = true
books_read = 0
time = 0
while can_read do
  if lines[1] == [] then
    if lines[2] == [] then
      can_read = false
    else
      next_time = lines[2].shift
    end
  else
    if lines[2] == [] then
      next_time = lines[1].shift
    else
      if lines[1][0] > lines[2][0] then
        next_time = lines[2].shift
      else
        next_time = lines[1].shift
      end
    end
  end
  if can_read and next_time + time <= K then
    time += next_time
    books_read += 1
  else
    can_read = false
  end
end
      
puts books_read