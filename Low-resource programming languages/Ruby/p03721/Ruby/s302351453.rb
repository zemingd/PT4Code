n,k = gets.split.map(&:to_i)
ar =[]
n.times do
  a,b = gets.split.map(&:to_i)
  if ar.size < k
    ar = [*ar, *([a]*b)]
  else
    if a < ar[-1]
      ar = [*ar, *([a]*b)]
      ar.sort!
      ar = ar[0,k]
    end
  end
end
puts ar[k-1]