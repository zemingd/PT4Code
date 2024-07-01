a,b = gets.split(" ").map(&:to_i)
    
  answer = a + b
if a - b > answer then
  answer = a - b
end
if a * b > answer then
  answer = a * b
end
print answer
