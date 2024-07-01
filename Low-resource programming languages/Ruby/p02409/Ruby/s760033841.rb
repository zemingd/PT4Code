a=[[[0]*10]*3]*4
n=gets.to_i
(1..n).each{|m|
  b,f,r,v=gets.split.map{|i|i.to_i-1}
  a[b][f][v]+=v+1
}
puts a.map{|i| i.map{|j| j*' '}*"\n"}*"\n#{'#'*20}\n"