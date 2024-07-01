l,r=gets.split.map(&:to_i)
m=2019
l.upto(r-1){|i|(i+1).upto(r){|j|k=(i*j)%2019;(m>k)?m=k:0;(puts m;exit)if m==0}}
puts m