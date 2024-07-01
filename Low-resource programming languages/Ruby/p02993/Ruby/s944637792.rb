s = gets.to_i
x = s % 10
for i in 1 .. 3 do
  a = (s/(10^i)) % 10
  if x == a
    puts 'bad'
  end
  x=a
end
