require 'prime'
x = gets.chomp.to_i
i = x

while i > 0
  if i.prime?
		puts i
		break
  end
	i += 1
end
