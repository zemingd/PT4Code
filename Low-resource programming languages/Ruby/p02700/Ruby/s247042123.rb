line = gets.split(' ').map(&:to_i)

t = line[0..1]
a = line[2..3]

winner = 0
while true do
  if winner == 0 || winner % 2 == 0
    break if (a[0] - t[1] <= 0)
    a[0] -= t[1]
  else
    break if (t[1] - a[0] <= 0)
    t[1] -= a[0]
  end
  winner += 1
end

if winner == 0 || winner % 2 == 0
  puts "No"
else
  puts "Yes"
end