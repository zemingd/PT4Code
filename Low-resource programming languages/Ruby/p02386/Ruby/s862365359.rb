class Dice
    attr_accessor :top, :front, :right, :left, :back, :bottom

    def initialize(top, front, right, left, back, bottom)
        @top, @front, @right, @left, @back, @bottom \
            = top, front, right, left, back, bottom
    end

    def north
        @top, @front, @bottom, @back \
            = @front, @bottom, @back, @top
    end

    def east
        @top, @right, @bottom, @left \
            = @left, @top, @right, @bottom
    end

    def spin
        @front, @right, @back, @left \
            = @right, @back, @left, @front
    end

    def is_equal?(other)
        for i in 0...6
            (i % 2 == 1)? (self.north): (self.east)
            for j in 0...4
                self.spin
                if (self == other)
                    return true
                end
            end
        end

        return false
    end

    def ==(other)
        @top == other.top && @front == other.front \
            && @right == other.right && @left == other.left \
            && @back == other.back && @bottom == other.bottom
    end

    def self.is_all_different(dices)
        dices.each_with_index do |dice, idx|
            for i in (idx + 1)...dices.size
                if dice.is_equal?(dices[i])
                    return false
                end
            end

            return true
        end
    end
end

n = gets.chomp.to_i

dices = Array.new(n) do
    Dice.new(*(gets.chomp.split.map(&:to_i)))
end

puts ((Dice.is_all_different(dices))? "Yes": "No")