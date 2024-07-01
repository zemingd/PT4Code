A, B, C, D = gets.split.map(&:to_i)

a = A
c = C

loop do
  c -= B
  break unless c.positive?

  a -= D
  break unless a.positive?
end

a.positive? ? puts("Yes") : puts("No")
