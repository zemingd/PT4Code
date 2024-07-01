eval"A="+gets.split*'*W='
S=$<.map(&:chop)*''
d=(r=0...A).map{|i|r.map{|j|S[i]>?-&&S[j]>?-&&[W,-W,1,-1,0].include?(i-j)?1:999}}
A.times{|k|A.times{|i|A.times{|j|a=d[i][k]+d[k][j];d[i][j]>a&&d[i][j]=a}}}
p d.flatten.map{|x|x%999}.max