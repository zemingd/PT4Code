line = $stdin.readline
a = line.split
X = a[0].to_i
Y = a[1].to_i
Z = a[2].to_i
K = a[3].to_i

An = $stdin.readline.split.map(&:to_i)

Bn = $stdin.readline.split.map(&:to_i)

Cn = $stdin.readline.split.map(&:to_i)

all = []

An.product( Bn, Cn ).each {|a| all.push( a.sum )}

all.sort! {|a, b| b <=> a }

all[0..(K-1)].each{ |v| print v; print "\n" }