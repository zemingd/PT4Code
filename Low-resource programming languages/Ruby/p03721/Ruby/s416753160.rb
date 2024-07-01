n,k = gets.split.map(&:to_i)
ar =[]
n.times do
  a,b = gets.split.map(&:to_i)
  b.times do
    ar << a
  end
end
ar.sort!
puts ar[k-1]