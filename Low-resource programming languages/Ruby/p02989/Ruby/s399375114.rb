N=gets.to_i
D=gets.split.map(&:to_i).sort

if N % 2 == 0
  index = N/2 - 1
  l = D[index]
  r = D[index+1]
  puts r-l
else
  puts 0
end