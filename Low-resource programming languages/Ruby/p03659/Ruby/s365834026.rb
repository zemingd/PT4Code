def main()
  n = gets.chomp.to_i
  x = gets.chomp.split(' ').map(&:to_i)
  table = Array.new(n,0)
  ans = Float::INFINITY
  sum = 0
  for i in 0..n-1
    table[i] = sum + x[i]
    sum = sum + x[i]
  end

  for i in 0..(n-2)
    tmp = (table[i] - (table[n-1] - table[i])).abs
    ans = [ans, tmp].min
  end
  puts ans
end

main()