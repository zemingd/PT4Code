
A,B=gets.split.map(&:to_i)

a,b= [A,B].sort

if a==b
  puts 2*b
else
  puts 2*b-1
end