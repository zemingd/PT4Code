n = gets.chomp.split('').map(&:to_i)
a = []
i = n.length - 1
while i >= 0
  a.append(n[i])
  i = i - 1
end
if a == n
  puts 'YES'
else
  puts 'NO'
end