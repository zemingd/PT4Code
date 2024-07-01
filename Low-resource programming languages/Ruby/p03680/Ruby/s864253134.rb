n = gets.chomp.to_i
a = []
n.times do
  a.push gets.chomp.to_i
end
done = [1]
cur = 0
loop do
  nex = a[cur]
  if nex == 2
    puts done.size
    exit
  end
  if done.include?(nex)
    puts '-1'
    exit
  end
  cur = nex - 1
  done.push nex
end
