d=1,*[0]*12
gets.chop.chars{|c|d=(0..12).map{|k|x=0
(c>'9'?0..9:[c]).map{|i|x+=d[(i.to_i-k)*9%13]}
x%=10**9+7}}
p d[5]