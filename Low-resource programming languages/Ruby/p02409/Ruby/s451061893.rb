gets
buildings = Array.new(4){Array.new(3){Array.new(10,0)}}
while gets
	b, f, r, v = $_.split.map(&:to_i)
	buildings[b-1][f-1][r-1] += v
end
puts buildings.map{|building|
	building.map{|floor|
		" "+floor*" "
	}*"\n"
}*"\n#{?#*20}\n"