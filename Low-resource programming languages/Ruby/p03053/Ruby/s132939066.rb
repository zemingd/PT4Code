r=gets.chomp.split(' ').map(&:to_i)
g=[]
s=0
a=r[0]-1
b=r[1]-1
for n in 1..r[0] do
  dd = gets.chomp.split('')
  g << dd
end
while true do
  bb=false
  t=[]
  for i in 0..a do
    for j in 0..b do
      if g[i][j] === "."
        bb = true
      end
    end
    t <<  g[i].dup
  end

  if bb
    s += 1
  else
    break
  end

  for i in 0..a do
    for j in 0..b do
      if t[i][j] === "#"
        if i === 0
          g[i+1][j] = "#"
        elsif i === a
          g[i-1][j] = "#"
        else
          g[i+1][j] = "#"
          g[i-1][j] = "#"
        end
        if j === 0
          g[i][j+1] = "#"
        elsif j === b
          g[i][j-1] = "#"
        else
          g[i][j+1] = "#"
          g[i][j-1] = "#"
        end
      end
    end
  end
end
print("#{s}\n")