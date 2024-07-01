n,l=gets.split().map(&:to_i)
s=[]
n.times{s<<gets.chomp}
s.sort!
r=""
n.times{|i|r+=s[i]}
puts r