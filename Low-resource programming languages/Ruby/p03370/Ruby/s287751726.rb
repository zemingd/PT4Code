n,m=get.split.map &:to_i
a=$<.map &:to_i
p n+(m-a.inject(:+))/a.min