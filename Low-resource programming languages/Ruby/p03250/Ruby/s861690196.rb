nlist = gets.split.map(&:to_i)
nlist.sort!{ |a, b| b <=> a }
strNum01 = nlist[0].to_s << nlist[1].to_s
p strNum01.to_i + nlist[2]