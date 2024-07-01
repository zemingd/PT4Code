gets
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)
score = b[a[0]-1]
a.inject do |i,j|
  score += b[j-1]
  if i+1 == j
    score += c[j-2]
  end
  j
end
print("#{score}")