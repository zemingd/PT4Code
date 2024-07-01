A, B, C = gets.split.map(&:to_i)

if A.even? && C.odd?
  puts('NO')
  exit
end

if A == 1
  puts('YES')
  exit
end

n = A
100_000.times do
  div, mod = n.divmod(B)
  if mod == C
    puts('YES')
    exit
  end
  n += A
end

puts('NO')