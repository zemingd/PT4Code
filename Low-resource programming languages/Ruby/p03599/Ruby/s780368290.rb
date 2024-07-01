array = gets.chomp.split(' ').map(&:to_f)
a = array[0]
b = array[1]
c = array[2]
d = array[3]
sol = array[4]
max = array[5]

maxwat = max * 100.0 / (100.0 + sol)
maxsug = max * sol / (100.0 + sol)

maxwat_divbyA = maxwat.to_i / (a.to_i * 100.0)
maxwat_divbyB = maxwat.to_i / (b.to_i * 100.0)
maxsug_divbyC = maxsug.to_i / (c.to_i)
maxsug_divbyD = maxsug.to_i / (d.to_i)

wateramount = []
sugaramount = []

for na in 0..maxwat_divbyA do
  for nb in 0..maxwat_divbyB do
    if 100.0 * a * na + 100.0 * b * nb <= maxwat
      w = 100.0 * a * na + 100.0 * b * nb
      wateramount.push(w.to_i)
    end
  end
end

for nc in 0..maxsug_divbyC do
  for nd in 0..maxsug_divbyD do
    if c * nc + d * nd <= maxsug && c * nc + d * nd <= wateramount.max * sol / 100
      s = c * nc + d * nd
      sugaramount.push(s.to_i)
    end
  end
end

ans1 = wateramount.max + sugaramount.max
ans2 = sugaramount.max

puts "#{ans1} #{ans2}"
