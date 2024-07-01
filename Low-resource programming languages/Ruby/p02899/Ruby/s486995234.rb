n = gets.to_i
a = gets.split.map(&:to_i)
for i in 0..n-1 do
  a[i] = [a[i],i+1]
end
a = a.sort_by {|x| x[0]}
for i in a do
  print(i[1]," ")
end