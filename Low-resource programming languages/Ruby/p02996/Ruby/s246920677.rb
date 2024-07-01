lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
C = 10 ** 12

jobs = []
for i in 1..N do
  jobs.push(lines[i][0] + lines[i][1] * C)
end

jobs.sort!
time_nec = []
deadline = []
for i in 1..N do
  time = jobs[i-1] % C
  dead = (jobs[i-1] - time) / C
  time_nec.push(time)
  deadline.push(dead)
end

time = 0
ans = "Yes"
for i in 1..N do
  time += time_nec[i-1]
  if time > deadline[i-1] then
    ans = "No"
    break
  end
end
  
print ans