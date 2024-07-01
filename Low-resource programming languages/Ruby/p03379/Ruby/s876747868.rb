n = gets.to_i
list = gets.chomp.split(" ").map(&:to_i)

def sakujo(list,i)#i番目の要素だけ除外したリストを返す
  lst = []
  for j in 0..list.length-1
    if i !=j
      lst.push(list[j])
    end
  end
  return lst
end

for i in 0..n-1
  l = sakujo(list,i)  
  print(l.sort[(n-1)/2])
  print("\n")
end

