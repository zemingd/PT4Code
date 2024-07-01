X, Y, Z, K = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i)
B = gets.split(' ').map(&:to_i)
C = gets.split(' ').map(&:to_i)

na = A.size
nb = B.size
nc = C.size

loop do
  break if na * nb * nc < 10000
  if na >= nb && na >= nc
    na -= 1
    next
  end
  if nb >= na && nb >= nc
    nb -= 1
    next
  end
  if nc >= na && nc >= nb
    nc -= 1
    next
  end
end

r_a = A.sort[0, na]
r_b = B.sort[0, nb]
r_c = C.sort[0, nc]

ret = []
r_a.each do |a|
  r_b.each do |b|
    r_c.each do |c|
      ret << a + b + c
    end
  end
end
ret = ret.sort.reverse

K.times do |i|
  puts ret[i]
end