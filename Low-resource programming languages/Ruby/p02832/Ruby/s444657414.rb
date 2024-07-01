lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

completed = 0
target = 1
i = 1
while i <= N do
  if lines[1][i-1] == target then
    target += 1
    completed += 1
  end
  i += 1
end
  
if completed == 0 then
  print -1
else
  print N - completed
end