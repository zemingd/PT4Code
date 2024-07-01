eval'A=#'+`tr ' ' ,`
p 0-A.count{_1<0}%2*2*A.map!(&:abs).min+A.sum