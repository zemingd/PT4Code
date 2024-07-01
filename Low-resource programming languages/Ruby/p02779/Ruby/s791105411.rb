lines = readlines.map{|line| line.split(' ').map(&:to_i)}
x=lines[0][0]
a=lines[1]
b=1
for i in 0..x-1
  for j in i+1..x-1
    if a[i]==a[j] then
      b=0
      break
    end
  end
end
if b==0 then
  puts 'NO'
elsif b==1 then
  puts 'YES'
end