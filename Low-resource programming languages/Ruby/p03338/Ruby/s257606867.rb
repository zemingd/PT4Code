N=gets.to_i
S=gets.chomp
ret=0
N.times{|i|
    x=S[0..i]
    y=S[i+1...N]
    cnt=0
    ('a'..'z').to_a.each{|c|cnt+=1 if [x,y].all?{|s|s.include?(c)}}
    ret=cnt if cnt>ret
}
p ret