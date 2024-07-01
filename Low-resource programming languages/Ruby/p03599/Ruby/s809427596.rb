array = gets.chomp.split(' ').map(&:to_f)
a = array[0]
b = array[1]
c = array[2]
d = array[3]
sol = array[4]
max = array[5]

maxwat = max * 100.0 / (100.0 + sol)
maxsug = max * sol / (100.0 + sol)

maxwat_divbyA = maxwat / (a * 100)
maxwat_divbyB = maxwat / (b * 100)
maxsug_divbyC = maxsug / c
maxsug_divbyD = maxsug / d

wateramount = []
sugaramount = []

for na in 0..maxwat_divbyA.to_i do
  for nb in 0..maxwat_divbyB.to_i do
    if 100.0 * a * na + 100.0 * b * nb <= maxwat
      w = 100.0 * a * na + 100.0 * b * nb
      wateramount.push(w.to_i)
    end
  end
end

for nc in 0..maxsug_divbyC.to_i do
  for nd in 0..maxsug_divbyD.to_i do
    if c * nc + d * nd <= wateramount.max * sol / 100.0
      s = c * nc + d * nd
      sugaramount.push(s.to_i)
    end
  end
end

ans1 = wateramount.max + sugaramount.max
ans2 = sugaramount.max

puts "#{ans1} #{ans2}"
