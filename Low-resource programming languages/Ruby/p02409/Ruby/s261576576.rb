house = Array.new(120,0)
n = gets.to_i
for i in 1..n
  b,f,r,v = gets.split.map(&:to_i)
  if b ==1
      house[10*f+r-11] += v
  elsif b == 2
      house[10*f+r+19] += v
  elsif b == 3
      house[10*f+r+49] += v
  else 
      house[10*f+r+79] += v
  end
end

for i in 0..119
  print " #{house[i]}"
  puts "" if i%10 == 9
  puts "#"*20 if (i == 29 ||i ==59 || i == 89)
end
