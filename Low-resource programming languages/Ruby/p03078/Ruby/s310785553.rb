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
array_x = line.split(" ").map(&:to_i)
array_x.sort!.reverse!

line = gets
line.chomp!
array_y = line.split(" ").map(&:to_i)
array_y.sort!.reverse!

line = gets
line.chomp!
array_z = line.split(" ").map(&:to_i)
array_z.sort!.reverse!

def nextdif(array,max,position)
  if(position+1 < max)
    return array[position]-array[position+1]
  else
    return -1
  end
end

sum=array_x[0]+array_y[0]+array_z[0]
i_x=0
i_y=0
i_z=0

dif_x=nextdif(array_x,x,i_x)
dif_y=nextdif(array_y,y,i_y)
dif_z=nextdif(array_z,z,i_z)
dif_all=0

stack=[]
stack.push([dif_all, i_x, dif_x, i_y, dif_y, i_z, dif_z])
# print(stack,"\n")

def insert_stack(st, array)
  for i in 0..st.size-1
    if(st[i][0] < array[0])
      next
    elsif(st[i][0] == array[0])
      if(st[i][1] != array[1] or st[i][3] != array[3] or st[i][5] != array[5])
        return st.insert(i,array)
      else
        return st
      end
    else
      return st.insert(i,array)
    end
  end
  return st.insert(st.size,array)
end

for cnt in 1..k do
  target=stack.shift
  puts(sum-target[0])
  if (target[1]+1 < x)
    tar_x = Marshal.load(Marshal.dump(target))
    tar_x[0] = target[0]+target[2]
    tar_x[1] += 1
    tar_x[2] = nextdif(array_x,x,tar_x[1])
    if(tar_x[1] < x) 
      stack = insert_stack(stack, tar_x)
    end
  end
  if (target[3]+1 < y)
    tar_y = Marshal.load(Marshal.dump(target))
    tar_y[0] = target[0]+target[4]
    tar_y[3] += 1
    tar_y[4] = nextdif(array_y,y,tar_y[3])
    if (tar_y[3] < y)
      stack = insert_stack(stack, tar_y)
    end
  end
  if (target[5]+1 < z)
    tar_z = Marshal.load(Marshal.dump(target))
    tar_z[0] = target[0]+target[6]
    tar_z[5] += 1
    tar_z[6] = nextdif(array_z,z,tar_z[5])
    if (tar_z[5] < z)
      stack = insert_stack(stack, tar_z)
    end
  end
  # print(cnt,", ",stack,"\n")
    
end
