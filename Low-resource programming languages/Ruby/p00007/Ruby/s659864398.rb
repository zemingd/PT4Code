cnt = gets.to_i
start = 100000
for n in 1..cnt  do
  start = (start * 1.05 / 1000).ceil * 1000
end
puts start