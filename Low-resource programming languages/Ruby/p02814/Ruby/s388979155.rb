lines = readlines.map{|line| line.split(' ').map(&:to_i)}
b=lines[1].map{|e|e.to_i/2}.inject(:lcm)
if lines[0][1]>=b then
  if lines[0][1]/b%2==0 then
    puts lines[0][1]/b/2
  else
    puts lines[0][1]/b/2+1
  end
else
  puts 0
end