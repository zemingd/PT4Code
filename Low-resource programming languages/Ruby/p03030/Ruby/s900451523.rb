a=gets.chomp.to_i
r = []
count = 1
a.times do
  name, score = gets.chomp.split(' ')
  r << [name, score.to_i, count]
  count = count + 1
end
result = r.sort {|a,b| 
  if a[0] == b[0]
    b[1] <=> a[1]
  else
    a[0] <=> b[0]
  end 
}
result.each do |e|
  puts e[2]
end
