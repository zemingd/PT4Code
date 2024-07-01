n=gets.chomp.to_i
s=gets.split
flag=false
n.times{|i|
  flag=true if s[i]=='Y'
}
puts flag ? 'Four' : 'Three'
