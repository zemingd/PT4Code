def vec_sub(v1, v2)
  return nil if v1.size != v2.size
  
  u = [0] * v1.size
  v1.size.times do |i|
    u[i] = v1[i] - v2[i]
  end
  return u
end

def vec_dist_pow2(v)
  s = 0
  v.size.times do |i|
    s += v[i] ** 2
  end
  return s
end

def is_square_number(n)
  (Math.sqrt(n.abs).floor ** 2) == n
end

def main(argv)
  (n, d) = gets.chomp.split(' ').map(&:to_i)
  
  x = [nil] * n
  n.times do |i|
    x[i] = gets.chomp.split(' ').map(&:to_i)
  end
  
  count = 0
  n.times do |i|
    ((i+1)...n).each do |j|
      count += 1 if is_square_number(vec_dist_pow2(vec_sub(x[i], x[j])))
    end
  end
  puts count.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end