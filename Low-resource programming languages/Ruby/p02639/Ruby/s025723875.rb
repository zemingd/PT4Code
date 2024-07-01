a, b, c = gets.split.map(&:to_i)

1000.times do |i|
  a2 = (b + c) / 2
  b2 = (c + a) / 2
  c2 = (a + b) / 2

  if a2.odd? || b2.odd? || c2.odd?
    puts i + 1
    exit
  end

  a = a2
  b = b2
  c = c2
end

puts(-1)
