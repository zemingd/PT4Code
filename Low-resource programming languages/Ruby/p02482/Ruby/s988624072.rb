chr = 0
a = gets.chomp.split(' ')
a.map! {|x| x.to_i}

if a[0] > a[1] then
	chr = " > "
elsif a[0] < a[1] then
	chr = " < "
else
	chr = " = "
end

a.map! {|x| x.to_s}

puts a[0] + chr + a[1]