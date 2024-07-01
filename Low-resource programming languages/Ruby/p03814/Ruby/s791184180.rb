io = STDIN
s=io.gets.chomp
f=s.index("A")
t=s.rindex("Z")
p t-f+1