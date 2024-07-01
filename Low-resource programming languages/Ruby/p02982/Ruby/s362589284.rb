( N, D) = gets.split(' ').map(&:to_i)
x = []
N.times {|i| 
  a = gets.split(' ').map(&:to_i)
  x.push(a)
}

ret = 0
x.each_with_index { |b, c| 
  (c+1...N).each{|i|
    sum = 0
    (0...D).each{|j|
      sum += (x[c][j] - x[i][j]) ** 2
    }
    ret += 1 if (Math.sqrt(sum).to_i - Math.sqrt(sum)).abs < 0.00001
  }
}
puts ret