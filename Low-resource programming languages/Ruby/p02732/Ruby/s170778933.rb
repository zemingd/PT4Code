N = gets.to_i
A = gets.split.map(&:to_i)

counts = A.inject({}) {|acc, i|
  acc[i] ||= 0
  acc[i] += 1
  acc
}.select {|_k, v| v >= 2 }

A.each do |i|
  puts counts.inject(0) {|c, (k, v)|
    if k == i
      v -= 1
    end
    if 1 < v
      c + v * (v - 1) / 2
    else
      c + 0
    end
  }
end