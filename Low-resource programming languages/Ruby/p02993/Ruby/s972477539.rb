s = gets.to_i
x = s % 10
t = 0
for i in 1 .. 3 do
  a = (s/(10^i)) % 10
  if x == a
    puts 'Bad'
    t = 1
  end
  x=a
end

if t==0 
  puts 'Good'
end