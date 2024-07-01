w = STDIN.gets.to_i
p = 100000

w.times{
p += p*0.05
p = ((p.to_f / 1000).ceil * 1000).to_i
}

puts p