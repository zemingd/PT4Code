h,n=gets.split.map &:to_i
a=gets.split.map &:to_i
puts a.reduce(:+)>=h ? "Yes" : "No"