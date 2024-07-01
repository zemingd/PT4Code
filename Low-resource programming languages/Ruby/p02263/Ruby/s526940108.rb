arr = gets.split(" ")
memory = []
cnt = 0
for i in 0..arr.size()-1
  if arr[i]=="+"
    memory[cnt-1]+=momory[cnt]
    cnt-=1
  elsif arr[i]=="-"
    memory[cnt-1]-=memory[cnt]
    cnt-=1
  elsif arr[i]=="*"
    memory[cnt-1]*=memory[cnt]
    cnt-=1
  else
    num = arr[i].to_i
    memory[cnt]=num
    cnt+=1
  end
end
puts(memory[0])