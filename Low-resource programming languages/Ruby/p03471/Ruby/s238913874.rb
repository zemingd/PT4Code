n, y = gets.chomp.split.map(&:to_i)
 
0.upto(n) do |i|
  0.upto(n-i) do |j|
    money = i * 10000 + j * 5000 + (n-i-j) * 1000
    if money == y
      puts [i, j, n-i-j].join(' ')
      exit
    end
  end
end
 
puts '-1 -1 -1'