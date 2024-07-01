gets
s = gets.chars
sum = 1
s.inject do |x,y|
  if x != y
    sum += 1
  end
  y
end

p sum