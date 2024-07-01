n =gets.to_i
retsu = gets.split("")
a = []
n.times{|t|
a.push(retsu[0..t].count("#") + retsu[t+1..-1].count("."))
}

print a.min