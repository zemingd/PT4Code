exp = [1]
for i in 2..31
  j = 2
  while i ** j <= 1000
    exp << i ** j
    j += 1
  end
end
x = gets.to_i
p exp.select { |e| e <= x }.max