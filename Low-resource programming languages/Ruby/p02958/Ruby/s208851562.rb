n = gets.to_i
i = gets.split
a = 0
ii = i.sort
count = 0

n.times do
  if i[a] != ii[a]
	count += 1
  end
  a += 1
end

if count == 0 || count == 2
  puts "YES"
else
  puts "NO"
end