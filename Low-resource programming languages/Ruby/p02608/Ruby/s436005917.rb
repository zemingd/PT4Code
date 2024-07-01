N = gets.to_i
count = Array.new(N, 0)
#puts count

(1..32).each { |x|
  (1..32).each { |y|
    (1..32).each { |z|
      sum = x*x + y*y + z*z + x*y + y*z + z*x
      break if sum > N
      count[sum] += 1
    }
  }
}

puts count
