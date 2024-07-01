def divide_the_problems(d)
  d.sort!
  left = d[d.size / 2 - 1]
  right = d[d.size / 2]

  right - left
end

n = gets
d = gets.split.map(&:to_i)
puts divide_the_problems(d)
