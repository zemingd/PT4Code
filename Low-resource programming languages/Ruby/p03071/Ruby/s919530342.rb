a, b = STDIN.read.split(/\s+/).map(&:to_i)
result = 0
2.times {
  if a > b
    result += a
    a -= 1
  else
    result += b
    b -= 1
  end
}
puts result