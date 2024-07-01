n=gets.to_i
a=gets.split.map(&:to_i)

init=(0...n).map{|_|0}
r = a.each_with_object( init ){|i,memo|memo[i-1]+=1; }
print r.join("\n")