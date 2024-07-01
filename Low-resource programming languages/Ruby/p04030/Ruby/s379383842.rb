S=gets.chomp
str=[]
S,each do |i|
  if i=='B'
    str.pop
  else
    str.push(i)
  end
end
puts str.join