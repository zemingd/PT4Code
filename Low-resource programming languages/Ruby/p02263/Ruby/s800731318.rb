s=[]
gets.split.map{|c|s<<(c<?0?(t=s.pop;?(+s.pop+c+t+?)):c)}
p eval s[0]