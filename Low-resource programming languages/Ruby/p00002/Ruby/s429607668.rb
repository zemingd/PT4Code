while gets
 array = $_.chomp.split

 if array == []
  break
 end

 sum = array[0].to_i + array[1].to_i
 sum = sum.to_s
 puts sum.length
end