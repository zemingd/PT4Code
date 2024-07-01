eval'A=#'+`tr ' ' ,`
p (0..59).sum{|i|(A.size-c=A.sum{_1[i]})*c<<i}.%10**9+7