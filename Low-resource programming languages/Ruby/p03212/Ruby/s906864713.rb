n = gets.to_s

s = n.chomp.split('')

n = n.to_i
count = 0

if n < 100
	puts 0
else
  3.upto(s.count) do |i|
  	[3,5,7].repeated_permutation(i) do |y|
  		if y[0..i-1].join.include?("3") && y[0..i-1].join.include?("5") && y[0..i-1].join.include?("7") && n >= y[0..i-1].join.to_i
  			count += 1
  		end
  	end
  end
end

puts count