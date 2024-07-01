dat = gets.split("\s")
apps = dat[0].to_i
flb = dat[1].to_i
cons = []

i = 0;
apps.times do
    cul = flb + i
    cons.push(cul)
    i = i + 1
end

i = 0;
if cons.index(0) != nil
    i = cons.index(0)
elsif cons.sort.reverse.first < 0
    sml = cons.sort.last
    i = cons.index(sml)
else
    sml = cons.sort.first
    i = cons.index(sml)
end

cons.delete_at(i)
puts cons.sum