n = gets.chomp.to_i

sum = 100000

for i in 1..n
  sum = sum * 1.05
  amari = sum%1000
  if amari!=0
    sum = sum + 1000 - amari
  end
end

print sum.to_i.to_s