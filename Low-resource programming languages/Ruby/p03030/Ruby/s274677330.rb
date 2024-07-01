n=gets.to_i
d=(1..n).map{|i| [i]<<gets.split}
d.map!{|e|[e[0],e[1][0],e[1][1].to_i]}
d.sort!{|s,t|
    if s[1] != t[1]
        s[1]<=>t[1]
    else
        t[2]<=>s[2]
    end
}
d.each{|e|p e[0]}