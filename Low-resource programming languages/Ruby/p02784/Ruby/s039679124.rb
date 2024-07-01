h,n,*a=`dd`.split.map(&:to_i)
puts h>a.inject(:+)? :No : :Yes