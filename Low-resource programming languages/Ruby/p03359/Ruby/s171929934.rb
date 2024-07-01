def main(m, d)
  if m <= d
    m
  else
    [m - 1, 0].max
  end
end

m, d = gets.split(" ").map(&:to_i)
puts main(m, d)