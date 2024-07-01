N,L=gets.split.map(&:to_i)
a=(L..L+N-1).to_a
s=a.inject(&:+)
if a.index(0)
    pus s
    exit
end
if L>0
    puts s-L
else
    puts s+L+N-1
end