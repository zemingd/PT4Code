kingaku,=gets.chomp.split.map(&:to_i)
i=kingaku+1
kirai_array=gets.chomp.split.map(&:to_i)

while TRUE
	if (i.split("").map(&:to_i) - kirai_array).size == i.split("").map(&:to_i).size
		puts i
        break
    end
i+=1
end
