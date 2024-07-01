n = gets.split.map &:to_i; a = Array.new(n)
a = gets.split.map &:to_i
while a.length > 1 do
  i = a.index(a.max)
  a[i] -= a.min
  if a[i] <= 0
    a.delete_at(i)
  end
end
puts a[0]