str = gets
nk = str.split(" ").map(&:to_i)
n = nk[0]
k = nk[1]

puts  Math.log(n,k).to_r.ceil