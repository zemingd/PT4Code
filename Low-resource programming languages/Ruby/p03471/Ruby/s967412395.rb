N, Y = gets.split(' ').map{|n| n.to_i}
catch :done do
  a = 0
  while a <= N do
    b = 0
    while b <= N - a do
      if Y == 10000 * a + 5000 * b + 1000 * (N - a - b)
        puts "#{a} #{b} #{N - a - b}"
        throw :done
      end
      b += 1
    end
    a += 1
  end
  puts '-1 -1 -1'
end