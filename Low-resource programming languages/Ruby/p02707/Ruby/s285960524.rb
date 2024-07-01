N = gets.to_i()
a = gets.split()

for i in 1..N do
  puts(a.count(i.to_s()))
  a.delete(i.to_s())
end