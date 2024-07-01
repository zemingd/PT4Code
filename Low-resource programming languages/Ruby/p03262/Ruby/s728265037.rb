N,X = gets.chomp.split(" ").map(&:to_i)
points= gets.chomp.split(" ").map(&:to_i)
points.insert(X).sort!
dis=[]
points.each_with_index do |point,i|
  if i!=0
    dis << point - points[i-1]
  end
end


def gcd(n, m)

  n, m = m, n if m > n
  #p [n, m]

   loop {
    r = n % m
    break if r == 0
    n, m = m, r
  }
  m
end


dis = dis.inject{|a, b| gcd(a, b)}

if dis
  puts dis
else
  puts points[0]-X
end
