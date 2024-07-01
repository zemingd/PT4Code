n=gets.chomp.to_i
a=gets.chomp.split(" ").map { |e| e.to_i  }

n.times do |i|
  a[i] -= (i+1)
end

a.sort!

center = a[n/2]

def absolute(a,b)

  if a>b
     return a-b
  else
    return b-a
  end

end


def minimam(a,center,n)
  min = 0

  n.times do |i|
    min += absolute(a[i],center)
  end

  return min
end

puts minimam(a,center,n)