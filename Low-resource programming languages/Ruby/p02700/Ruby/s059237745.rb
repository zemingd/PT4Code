A, B, C, D = gets.chomp.split.map(&:to_i)

while(A > 0  &&  C > 0) do
  A -= D
  C -= B
end

answer = ((C <= 0) ? "Yes" : "No")

print answer