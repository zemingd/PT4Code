
class Dice 
    attr_reader :nums
    def initialize(nums)
        @nums = [nil] + nums
    end
    def top
        @nums[1]
    end
    def front
        @nums[2]
    end
    def right
        @nums[3]
    end
    def rollx
        @nums[1], @nums[2], @nums[6], @nums[5] = @nums[5], @nums[1], @nums[2], @nums[6]
        self
    end
    def rolly
        @nums[1], @nums[3], @nums[6], @nums[4] = @nums[4], @nums[1], @nums[3], @nums[6]
        self
    end
    def rollz
        @nums[2], @nums[3], @nums[5], @nums[4] = @nums[4], @nums[2], @nums[3], @nums[5]
        self
    end
    def moveN
        rollx.rollx.rollx
    end
    def moveS
        rollx
    end
    def moveE
        rolly
    end
    def moveW
        rolly.rolly.rolly
    end
    def move(m)
        case m
        when 'N' then moveN
        when 'S' then moveS
        when 'E' then moveE
        when 'W' then moveW
        end
    end
    def move_all
        moves = [
            # top:1 front:2
            :y, :rollz, :y, :rollz, :y, :rollz, :y, :rollz, :moveN,
            # top:2 front:6
            :y, :rollz, :y, :rollz, :y, :rollz, :y, :rollz, :moveW,
            # top:3 front:6
            :y, :rollz, :y, :rollz, :y, :rollz, :y, :rollz, :moveW,
            # top:5 front:6
            :y, :rollz, :y, :rollz, :y, :rollz, :y, :rollz, :moveW,
            # top:4 front:6
            :y, :rollz, :y, :rollz, :y, :rollz, :y, :rollz, :moveN,
            # top:6 front:3
            :y, :rollz, :y, :rollz, :y, :rollz, :y, :rollz,
        ]
        moves.each do |m|
            if m == :y
                yield self
            else
                self.send(m)
            end
        end
    end
end

n = STDIN.gets.to_i

dices = []
n.times do |i|
    nums = STDIN.gets.split.map(&:to_i)
    dices << Dice.new(nums)
end

(0..(n - 2)).each do |i|
    ((i + 1)..(n - 1)).each do |j|
        d1 = dices[i]
        d2 = dices[j]
        next if d1.nums.sort != d2.nums.sort
        d1.move_all do |d|
            if d.nums == d2.nums
                puts "No"
                exit
            end
        end
    end
end

puts "Yes"