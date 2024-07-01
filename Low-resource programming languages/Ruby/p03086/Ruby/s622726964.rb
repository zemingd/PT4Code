$Base = gets.chomp
 
$table = ["A","C","G","T"]
$ans = 0

def include_ATCG?(c)
	flag = false
  
  	$table.each do |b|
      if b == c
        flag = true
      end
    end
      
    return flag
end

def get_length_of_ATCG(str)
  cnt = 0
	str.chars do |c|
		if include_ATCG?(c)
			cnt += 1
		else
 			break
    	end
  	end
	return cnt
end

$Base.length.times do |i|
  $ans = [get_length_of_ATCG($Base[i..$Base.length-1]), $ans].max
end

puts $ans