n = gets.to_i
line = gets.chomp.split(" ")
array = []
for i in line
  array.push(i.to_i)
end

for i in 0...n
  a = array.clone
  a.delete_at(i)
  a = a.sort { |a, b| b <=> a }
  #p a
  puts a[a.size/2]
end
  