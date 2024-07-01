class Candy
	def divide(i)
		i.each_with_index do |k, j|
			if j % 2 == 0
				puts 'YES'
			else
				puts 'No'
			end
		end
	end
end

Candy.new.divide(STDIN.gets.chomp.split(''))