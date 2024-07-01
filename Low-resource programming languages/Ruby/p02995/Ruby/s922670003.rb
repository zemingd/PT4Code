A, B, C, D = gets.split.map(&:to_i)

Div_C = B/C - A/C + (A%C == 0 ? 1 : 0)
Div_D = B/D - A/D + (A%D == 0 ? 1 : 0)

CD = C.lcm(D)

Div_CD = B/CD - A/CD + (A%CD == 0 ? 1 : 0)

STDERR.puts "B/C: #{B/C}, A/C #{(A - 1)/C}"
STDERR.puts "Div_C: #{Div_C}, Div_D: #{Div_D}, Div_CD: #{Div_CD}"

p B - A + 1 - (Div_C + Div_D - Div_CD)
