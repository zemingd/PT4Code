lines = readlines.map{|line| line.split(' ').map(&:to_i)}
b=lines[1].inject(:lcm)/2
if lines[0][1]>=b then
  if lines[0][1]/b%2==0 then
    puts lines[0][1]/b/2
  else
    puts lines[0][1]/b/2+1
else
  puts 0
end