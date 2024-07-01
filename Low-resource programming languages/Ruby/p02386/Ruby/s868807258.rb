class Dice
	def initialize(input)
		# top bottom N E S W
		@number = input.split.map(&:to_i)

		@dice_number = [1, 6, 5, 3, 2, 4]
	end

	def rotate(command)
		swap_number = []

		case command
		when 'N'
			swap_number = [2, 1, 4]
			swap(swap_number)
		when 'E'
			swap_number = [3, 1, 5]
			swap(swap_number)
		when 'S'
			swap_number = [4, 1, 2]
			swap(swap_number)
		when 'W'
			swap_number = [5, 1, 3]
			swap(swap_number)
		end
	end

	def rotate_horizontal
		tmp = @dice_number[2]
		(2..4).each {|i| @dice_number[i] = @dice_number[i+1]}
		@dice_number[5] = tmp
	end

	def swap(number)
		number.map do |n|
			@dice_number[0], @dice_number[n] = @dice_number[n], @dice_number[0]
		end
	end

	def number
		number_return = []
		(0..5).each do |e|
			number_return << @number[@dice_number[e]-1]
		end
		
		number_return
	end
end

def rotateToTop(dice, position)
	case position
	when 0 then
	when 1 then
		dice.rotate('N')
	when 2 then
		dice.rotate('W')
	when 3 then
		dice.rotate('E')
	when 4 then
		dice.rotate('S')
	when 5 then
		2.times { dice.rotate('S') }
	end
end

n = gets.to_i

dice = []
n.times do |i|
	dice << Dice.new(gets)
end

difference_flag = 0
if difference_flag == 0 then
	puts "Yes"
else
	puts "No"
end