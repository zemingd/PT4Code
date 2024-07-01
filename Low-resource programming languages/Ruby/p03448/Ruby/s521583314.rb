A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

count = 0
(0..A).each { |a|
  xa = a * 500
  break if xa > X
  (0..B).each { |b|
    xb = xa + b * 100
    break if xb > X
    (0..C).each { |c|
      x = xb + c*50
      break if x > X
      count += 1 if x == X
    }
  }
}

p count