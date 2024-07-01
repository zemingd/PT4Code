i = gets
n = i.length
i = i.to_i(2)

io = ""
n.times{|t|
    k = t%2
io += k.to_s
}
io = io.to_i(2)

oi = ""
n.times{|t|
    k = (t+1)%2
oi += k.to_s
}
oi = oi.to_i(2)

a = (i ^ io).to_s(2).count("1")
b = (i ^ oi).to_s(2).count("1")

if a > b then
    print b
else
    print a
end
