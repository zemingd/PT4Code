n, k = gets.split.map(&:to_i)
h = gets.chomp.split(' ').map(&:to_i)

for i in 1..n do
  print(h.index(i).to_i + 1)
  if i != n
    print(" ")
  else
    puts("")
  end
end