n=gets.to_i
arr=Array.new()
res=Array.new()
n.times do
  com,num=gets.split
  num=num.to_i
  arr<<[com,num]
end
n.times do |i|
  if arr[i][0]=="insert"
    res << arr[i][1] 
  elsif arr[i][0]=="delete"
    res.delete(arr[i][1])
  elsif arr[i][0]=="deleteFirst"
    res.delete(res[0])
  elsif arr[i][0]=="deleteLast"
    res.delete(res[res.length-1])
  end
end
res=res.reverse
puts res.join(' ')