h,n=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
print h-a.inject(:+)>0?"No":"Yes"

