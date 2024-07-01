n = gets.to_i

ns = n.to_s.split("").map(&:to_i).inject(:+)

if n % ns == 0 then
	puts 'Yes'
else
	puts 'No'
end
