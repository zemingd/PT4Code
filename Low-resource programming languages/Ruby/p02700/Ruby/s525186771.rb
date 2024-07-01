A, B, C, D = gets.split.map(&:to_i)

while(1)
  C -= B
  if A <= 0
    puts "No"
    break
  end
  A -= D
  if C <= 0
    puts "Yes"
    break
  end
end