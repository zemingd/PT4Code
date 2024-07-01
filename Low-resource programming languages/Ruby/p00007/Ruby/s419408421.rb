
n = gets.chomp.to_i
a = 100000

for i in 1..n

  a = a * 1.05

  if a % 1000 != 0

    a = a - (a % 1000) + 1000

  end
end

puts a.to_i