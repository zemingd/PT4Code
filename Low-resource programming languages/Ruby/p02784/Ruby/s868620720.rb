lines = readlines.map{|line| line.split(' ').map(&:to_i)}
h=lines[0][0]
a=lines[1]
c=0
for i in 0..a.length-1
  b=a.combination(i+1).to_a
  for j in 0..b.length-1
    if h==b[j].inject(:+) then
      c=1
      break
    end
  end
end
if c==1 then
  puts "Yes"
else
  puts "No"
end