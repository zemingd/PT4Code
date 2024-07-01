n, y = gets.split.map(&:to_i)

a = b = c = -1
valid = false

0.upto(n) do |i|
  break if valid

  0.upto(n - i) do |j|
    k = n - i - j
    valid = 10_000 * i + 5_000 * j + 1_000 * k == y

    if valid
      a, b, c = [i, j, k]
      break
    end
  end
end

puts [a, b, c].join(" ")
