n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
infr = [a,b,c,d,e]

mini = infr.min

if mini >= n
  steps = 5
else
  indx = infr.index(mini)
  steps = (n-1)/mini + 5
end

puts steps