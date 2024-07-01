n, m, k = gets.chomp.split(' ').map(&:to_i)

a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

a_cnt = 0


array = Array.new

(1..n).each do |i|
  a_cnt += a[i-1]
  s = i
  if a_cnt > k
    a_cnt -= a[i-1]
    s -= 1
    array << s
    break
  end
  
  b_cnt = b.sum
  j = m
  while b_cnt > k - a_cnt
    b_cnt -= b[j-1]
    j -= 1

  end
  array << s + j

end

p array.max