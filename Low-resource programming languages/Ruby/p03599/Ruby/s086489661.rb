array = gets.chomp.split(' ').map(&:to_f)
a = array[0]
b = array[1]
c = array[2]
d = array[3]
sol = array[4]
max = array[5]

maxsug = max * sol / (100.0 + sol)

maxwat_divbyA = max / (a * 100.0)
maxwat_divbyB = max / (b * 100.0)
maxsug_divbyC = maxsug / c
maxsug_divbyD = maxsug / d
solpercent = 100.0 * sol / (100.0 + sol)

ans1 = 0
ans2 = 0
maxconc = 0

for na in 0..maxwat_divbyA.to_i do
  for nb in 0..maxwat_divbyB.to_i do
    for nc in 0..maxsug_divbyC.to_i do
      for nd in 0..maxsug_divbyD.to_i do
        watamount = 100 * na * a + 100 * nb * b
        sugamount = nc * c + nd * d
        conc = 100 * sugamount / (watamount + sugamount)
        if conc <= solpercent && conc > maxconc && watamount + sugamount <= max
          ans1 = watamount + sugamount
          ans2 = sugamount
          maxconc = conc
        end
      end
    end
  end
end

print "#{ans1.to_i} #{ans2.to_i}"
