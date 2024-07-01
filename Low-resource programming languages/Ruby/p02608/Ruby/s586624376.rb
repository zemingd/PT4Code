N = $stdin.read.split(/\s/).map(&:to_i)[0]
counts = Array.new(N) { 0 }
1.upto(N) {|x|
  x2 = x * x
  break if N < x2 + 5
  1.upto(N) {|y|
    y2 = y * y
    xy = x * y
    break if N < x2 + y2 + xy + 3
    1.upto(N) {|z|
      n = x * x + y * y + z * z + x * y + y * z + z * x
      if n <= N
        counts[n - 1] += 1
      end
      break if N <= n
    }
  }
}
 
puts counts.join("\n")
