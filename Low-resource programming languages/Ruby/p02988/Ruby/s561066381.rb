a=gets.split.map(&:to_i)
puts a.each_slice(3).select{|x,y,z| [x,y,z].minmax == [x,z].sort}.size