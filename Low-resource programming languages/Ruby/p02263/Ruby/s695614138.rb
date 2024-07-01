arr = gets.chomp.split(" ")
memory = Array.new(100){0}
cnt = 0
for i in 0..arr.size()-1
  if arr[i]=="+"
    memory[cnt-1]+=memory[cnt]
  elsif arr[i]=="-"
    memory[cnt-1]-=memory[cnt]
  elsif arr[i]=="*"
    memory[cnt-1]*=memory[cnt]
  else
    memory[cnt]=arr[i].to_i
    cnt+=1
  end
end
puts(memory[0])