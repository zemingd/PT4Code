kingaku,=gets.chomp.split.map(&:to_i)
i=kingaku
kirai_array=gets.chomp.split.map(&:to_i)
 
while 1
	if (i.to_s.split("").map(&:to_i) - kirai_array).size == i.to_s.split("").map(&:to_i).size
		puts i
        break
    end
i+=1
end