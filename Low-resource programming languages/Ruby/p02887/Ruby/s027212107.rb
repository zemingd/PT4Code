_ = gets
s = gets.chomp.chars
sum = 1
s.inject do |i,j|
  if i != j
    sum += 1
    j
  else
    i
  end
end

print("#{sum}")