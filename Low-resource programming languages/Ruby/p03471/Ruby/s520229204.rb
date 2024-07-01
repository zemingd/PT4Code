N, Y = gets.split.map(&:to_i)

x = y = z = -1
x = Y / 10000
x = (x > N) ? N : x

x.downto(0) do |i|
  0.upto(N-i) do |j|
    sum = i * 10000 + j * 5000 + (N-i-j) * 1000
    if Y == sum
      x = i
      y = j
      z = N - i - j
      puts [x, y, z].join(' ')
      exit
    end
  end
end

puts [-1, -1, -1].join(' ')