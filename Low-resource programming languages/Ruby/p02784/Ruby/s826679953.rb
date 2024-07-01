h,n=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).inject(:+)
puts h>a ? "No" : "Yes"
