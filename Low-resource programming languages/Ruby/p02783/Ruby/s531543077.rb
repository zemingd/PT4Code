a,b = gets.split.map(&:to_i)
cnt = 0

while a > 0 do
  cnt += 1
  a -= b
end
puts cnt