n, m = gets.split.map(&:to_i)
problems = m.times.map{ gets.split.map(&:to_i) }.sort_by{|(a, b)| b}

bridges = [Float::INFINITY]
problems.each do |(a, b)|
  bridge = bridges.last
  bridges << b - 1 unless a <= bridge && bridge <= b
end

puts bridges.size - 1