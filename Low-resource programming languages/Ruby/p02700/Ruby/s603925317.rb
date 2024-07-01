A, B, C, D = gets.split.map(&:to_i)

turn1 = C / B
if C % B != 0
  turn1 += 1
end

turn2 = A / D
if A % D != 0
  turn2 += 1
end

turn1 <= turn2 ? puts("Yes") : puts("No")
