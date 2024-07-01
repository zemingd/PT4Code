arr = []
n=1
i=1
loop do
  arr.push(gets.chomp.to_i)
  i+=1
  if arr[arr.size-1] == 0
    arr.each {|i|
      puts 'Case '+n.to_s+': '+i.to_s
      n+=1
    }
    break
  end
end