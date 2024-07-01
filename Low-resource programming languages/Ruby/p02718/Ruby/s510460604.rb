n,m,*a=`dd`.split.map &:to_i;a.sort!.reverse!
puts a[m-1]>a.inject(:+)/4*m ?:No: :Yes