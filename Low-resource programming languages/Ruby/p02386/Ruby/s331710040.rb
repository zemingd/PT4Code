class Dice
	attr_reader :pips

  def initialize(ary)
    @pips = ary
  end

  def _rot(ary, r)
		vals = ary.rotate(r).map{ |i| @pips[i-1] }
		ary.zip(vals).each{ |i, v| @pips[i-1] = v }
  end

	def rotate(ch)
    case ch
    when 'N'
      _rot([1, 2, 6, 5], +1)
    when 'S'
      _rot([1, 2, 6, 5], -1)
    when 'E'
      _rot([1, 4, 6, 3], +1)
    when 'W'
      _rot([1, 4, 6, 3], -1)
    when 'Z'
      _rot([2, 3, 5, 4], +1)
    end
	end

	def equal(other_dice)
		4.times do
      4.times do
				rotate('Z')
				return true if @pips == other_dice.pips
			end
      rotate('N')
    end
    rotate('E')
    4.times do
			rotate('Z')
			return true if @pips == other_dice.pips
		end
    rotate('W')
    rotate('W')
    4.times do
			rotate('Z')
			return true if @pips == other_dice.pips
		end
    return false
	end
end

n = gets.chomp.to_i
dices = []
n.times{ dices << Dice.new(gets.chomp.split(/\s/).map(&:to_i)) }

(0..(n-2)).each do |i|
	((i+1)..(n-1)).each do |j|
		if dices[i].equal(dices[j])
			puts 'No'
			exit
		end
	end
end
puts 'Yes'