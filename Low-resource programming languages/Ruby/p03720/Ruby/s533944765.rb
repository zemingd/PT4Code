nm =gets.split.map { |e|e.to_i  }
array=[]
nm[1].times do
  road=  gets.split.map { |e|e.to_i  }
  array.push(road[0])
  array.push(road[1])
end
x =1
while x <= nm[0] do
puts array.count(x)
x = x +1
end
