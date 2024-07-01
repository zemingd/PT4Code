x = gets.to_i
table = []
for i in 1..31
	for j in 2..31
		v = i ** j
        if v <= 1000
			table << v if !table.include?(v)
		else
			break
		end
	end
end
table.sort!.reverse!
table.each{|v|
  if x >= v
    puts v
    break
  end
}
