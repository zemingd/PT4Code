xy=gets.split.map(&:to_i)
puts (xy-[1,3,5,7,8,10,12]).length==0||(xy-[4,6,9,11]).length==0 ? "Yes" : "No"