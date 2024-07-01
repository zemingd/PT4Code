class Array
  def add_heap(x)
    self.push(x)
    i = self.length - 1
    while i != 0 and self[(i-1)/2] > self[i] do
      tmp = self[(i-1)/2]
      self[(i-1)/2] = self[i]
      self[i] = tmp
      i = (i-1)/2
    end
  end
  def delete_heap_index(i)
    self[i] = self[-1]
    self.pop
    while self[2*i+1] != nil do
      if self[2*i+2] != nil and self[2*i+2] < self[2*i+1] then
        j = 2 * i + 2
      else
        j = 2 * i + 1
      end
      if self[j] < self[i] then
        tmp = self[i]
        self[i] = self[j]
        self[j] = tmp
        i = j
      else
        break
      end
    end
  end
end

lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
M = lines[0][1]
C = 10 ** 10

job = []
for i in 1..N do
  job[i-1] = lines[i][0] * C + lines[i][1]
end
job.sort!
    
t = 1
ans = 0
cand = []
while t <= M do
  loop do
    if job != [] then
      date = job[0] / C
      pay = job[0] % C
    else
      break
    end
    if date <= t then
      cand.add_heap(-pay)
      job.shift
    else
      break
    end
  end
  if cand != [] then
    ans -= cand[0]
    cand.delete_heap_index(0)
  end
  t += 1
end
puts ans