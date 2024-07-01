n = gets.to_i
evens = Hash.new 0
odds = Hash.new 0
gets.split.map(&:to_i).each_slice(2) do |(e, o)|
  evens[e] += 1
  odds[o] += 1
end
Num = Struct.new(:n, :cnt)
ZERO = Num[0, 0]
en = evens.map { |(y, i)| y > 0 and Num[y, i] }.sort_by(&:cnt).reverse + [ZERO]
on = odds.map { |(y, i)| y > 0 and Num[y, i] }.sort_by(&:cnt).reverse + [ZERO]
#p en, on
if en[0].n == on[0].n
  if en[0].n > on[0].n
    on[0], on[1] = on[1], on[0]
  else
    en[0], en[1] = en[1], en[0]
  end
end

p on[1..-1].sum(&:cnt) + en[1..-1].sum(&:sum)
