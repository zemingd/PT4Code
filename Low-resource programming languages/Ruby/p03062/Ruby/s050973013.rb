N=gets.to_i
array=gets.chomp.split(" ").map(&:to_i).sort_by{|a| a.abs }

minus_count = 0
ret = 0
array.each do |a|
    minus_count+=1 if a < 0
    ret+=a.abs
end
ret-=(array[0].abs*2) if minus_count.odd?
puts ret
