n = gets.to_i
a = []
n.times do
  a.push(gets.to_i)
end

index = a[0]
flag = true
n.times do |i|
  if a[index-1] == 2
    puts i+2
    flag = false
    break
  end
  index = a[index-1]
end

if flag
  puts -1
end