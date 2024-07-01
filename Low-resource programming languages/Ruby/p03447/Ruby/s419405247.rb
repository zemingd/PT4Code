a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

x = x / 50
i = 0
sum = 0

y = Array.new

while 10 * (i + 1) <= x 
  i = i + 1
end

if a < i then
  i = a
end

for j in 0..i do
  x = x - 10 * j
  if x % 2 == 1 then
    if c < x && b < (x - 1) / 2 then
      y[j] = -(x - c) / 2 + b + 1
    elsif c < x then
      y[j] = (c + 1) / 2
    elsif b < (x - 1) /2 then
      y[j] = b + 1
    else
      y[j] = (x + 1)/2
    end
  else
    if c < x && b < x / 2 then
      y[j] = -(x - c) / 2 + b + 1
    elsif c < x then
      y[j] = c / 2 + 1
    elsif b < x / 2 then
      y[j] = b + 1
    else
      y[j] = x/2 + 1
    end
  end
  sum = sum + y[j]
  x = x + 10 * j
end

puts sum