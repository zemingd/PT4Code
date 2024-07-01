arr = gets.chomp.split(" ")
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
    memory[cnt]=arr[i].to_i
    cnt+=1
  end
end
puts(memory[0])