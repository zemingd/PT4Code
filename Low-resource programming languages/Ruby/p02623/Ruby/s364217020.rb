n, m, k = gets.chomp.split(' ').map(&:to_i)

a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)

a_cnt = 0

array = Array.new

(0..n-1).each do |i|
  a_cnt += a[i]
  s = i + 1
  if a_cnt > k
    a_cnt -= a[i]
    s -= 1
    array << s
    break
  end
  
  j = m
  while b[0..j-1].sum > k - a_cnt
    j -= 1 
  end

  array << s + j

end

p array.max