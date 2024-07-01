#n = gets.chomp.to_i
n, d = gets.chomp.split(" ").map(&:to_i);

def distance (a, b)
  sum =0
  a.size.times do |i|
    sum += ((a[i] - b[i])**2)
  end
  sum
end

def can_root (d)
  i=2
  while true
    return true if d == 1
    if d % (i**2) == 0
      d = d / (i**2)
      i = 2
      next
    end
    if d == i
      return false
    end
    i+=1
  end
end

xs = []
n.times do
  xs <<  gets.chomp.split(" ").map(&:to_i);
end

count =0
xs.combination(2) do |a,b|
  d = distance(a,b)
  count +=1 if can_root (d)
end

puts count