# coding: utf-8
line = gets
line.chomp!
/(\d+)\s+(\d+)\s+(\d+)\s+(\d+)/ =~ line
x = $1.to_i
y = $2.to_i
z = $3.to_i
k = $4.to_i

line = gets
line.chomp!
arrayX = line.split(" ").map(&:to_i)
arrayX.sort!.reverse!

line = gets
line.chomp!
arrayY = line.split(" ").map(&:to_i)
arrayY.sort!.reverse!

line = gets
line.chomp!
arrayZ = line.split(" ").map(&:to_i)
arrayZ.sort!.reverse!

diffX=[]
for i in 0..x-2 do
  diffX.push(arrayX[i] - arrayX[i+1])
end

diffY=[]
for i in 0..y-2 do
  diffY.push(arrayY[i] - arrayY[i+1])
end

diffZ=[]
for i in 0..z-2 do
  diffZ.push(arrayZ[i] - arrayZ[i+1])
end

max=arrayX[0]+arrayY[0]+arrayZ[0]

stack=[]
stack.push([0,0,0,0])

def insertStack(st, array)
  for i in 0..st.size-1 do
    if (st[i][0] < array[0]) then
      next
    elsif (st[i][0] == array[0]) then
      j = 0
      while (st[i+j][0] == array[0]) do
        if (st[i+j][1] == array[1] and st[i+j][2] == array[2] and st[i+j][3] == array[3]) then
          return st
        end
        j += 1
        if (i+j >= st.size) then
          break
        end
      end
      return st.insert(i+j, array)
    else
      return st.insert(i, array)
    end
  end
  return st.insert(st.size, array)
end

for cnt in 1..k do
  target=stack.shift
  sum=target[0]
  iX=target[1]
  iY=target[2]
  iZ=target[3]

  puts(max-sum)
  
  if (iX +1 < x) then
    stack = insertStack(stack, [sum+diffX[iX], iX+1, iY, iZ])
  end

  if (iY +1 < y) then
    stack = insertStack(stack, [sum+diffY[iY], iX, iY+1, iZ])
  end

  if (iZ +1 < z) then
    stack = insertStack(stack, [sum+diffZ[iZ], iX, iY, iZ+1])
  end
  # print(cnt,", ",stack,"\n")
end
