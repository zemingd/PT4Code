N = gets.chomp.to_i
a = []
n = 1
while n <= N
  x = gets.chomp
  a << x
  n = n + 1
end

v = a.sort

a.each do |m|
  l=0
  N.times {
    if m == v[l]
      p l + 1
    end
    l = l + 1
  }
end
