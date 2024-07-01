S = gets.split("")
T = gets.split("")

p S
p T

sum = 0
3.times do |x|
  sum += 1 if S[x] == T[x]
end
p sum
