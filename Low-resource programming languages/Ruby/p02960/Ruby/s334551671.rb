d=[1]+[0]*12
gets.chop.bytes{|c|
d=(0..12).map{|k|
s=0;
10.times{|i|c!=i+48&&c<60||s+=d[(i-k)*9%13]};
s.%10**9+7
}
};
p d[5]