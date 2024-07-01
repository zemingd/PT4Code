n = gets.to_i
a = gets.split(' ').map(&:to_i).uniq.sort.first(2).compact


while a[0] != a[1] && a[0] > 1 && a[1] > 1 do
  a[1] %= a[0]
  a.sort!
end

if a.min == 0
  puts a.max
else
  puts a.min
end
