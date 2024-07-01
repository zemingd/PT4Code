n,x=gets.split.map(&:to_i)
a=$<.map(&:to_i)
p n+(x-a.inject(:+))/a.min