n, q = gets.split.map(&:to_i)
a = Array.new(n-1)
b = Array.new(n-1)
p = Array.new(q)
x = Array.new(q)
for i in 0..(n-2)
  a[i], b[i] = gets.split.map(&:to_i)
end
for i in 0..(q-1)
  p[i], x[i] = gets.split.map(&:to_i)
end
cnt = Array.new(n+1, 0)

for i in 0..(q-1)
  cnt[p[i]] += x[i]
end

nodetmp = Array.new(n+1).map{Array.new(0)}
for i in 0..(n-2)
  nodetmp[a[i]].push(b[i])
  nodetmp[b[i]].push(a[i])
end

nodes = Array.new(n+1).map{Array.new(3, 0)}
for i in 0..(nodetmp[1].length-1)
  nodes[1][i+1] = nodetmp[1][i]
end

cnts = 1
tmp = nodes[1][1]
pid = 1
while cnts < n
  if tmp != 1 && nodes[tmp][0] == 0
    nodes[tmp][0] = pid
    if nodetmp[tmp].length <= 1
      tmp = pid
      pid = nodes[pid][0]
      cnts += 1
    else
      nodetmp[tmp].delete(pid)
      for i in 0..(nodetmp[tmp].length-1)
        nodes[tmp][i+1] = nodetmp[tmp][i]
      end
      pid = tmp
      tmp = nodes[tmp][1]
      cnts += 1
    end
  elsif tmp != 1
    if nodes[tmp][2] == 0
      tmp = pid
      pid = nodes[pid][0]
    else
      if nodes[nodes[tmp][2]][0] == 0
        pid = tmp
        tmp = nodes[tmp][2]
      else
        tmp = pid
        pid = nodes[pid][0]
      end
    end
  else
    if nodes[1][2] == 0
      break
    else
      pid = 1
      tmp = nodes[1][2]
    end
  end
end

cnts = 1
cnt[nodes[1][1]] += cnt[1]
cnt[nodes[1][2]] += cnt[1]
chk = Array.new(n+1, 0)
chk[1] = 1
tmp = nodes[1][1]
pid = 1
while cnts < n
  if tmp != 1 && chk[tmp] == 0
    cnt[nodes[tmp][1]] += cnt[tmp]
    cnt[nodes[tmp][2]] += cnt[tmp]
    chk[tmp] = 1
    cnts += 1
    if nodes[tmp][1] != 0
      pid = tmp
      tmp = nodes[tmp][1]
    else
      tmp = pid
      pid = nodes[tmp][0]
    end
  elsif tmp != 1
    if nodes[tmp][2] == 0
      tmp = pid
      pid = nodes[pid][0]
    else
      if chk[nodes[tmp][2]] == 0
        pid = tmp
        tmp = nodes[tmp][2]
      else
        tmp = pid
        pid = nodes[pid][0]
      end
    end
  else
    if nodes[1][2] == 0
      break
    else
      pid = 1
      tmp = nodes[1][2]
    end
  end
end 

for i in 1..n
  print "#{cnt[i]} "
end
puts ""