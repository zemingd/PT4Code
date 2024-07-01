class Dice
    def initialize(n)
        @up = n[0]
        @front = n[1]
        @right = n[2]
        @left = n[3]
        @back = n[4]
        @down = n[5]
    end

    def move(direction)
        case direction
        when 'S'
            tmp = @up
            @up = @back
            @back = @down
            @down = @front
            @front = tmp
        when 'W'
            tmp = @up
            @up = @right
            @right = @down
            @down = @left
            @left = tmp
        when 'E'
            tmp = @up
            @up = @left
            @left = @down
            @down = @right
            @right = tmp
        when 'N'
            tmp = @up
            @up = @front
            @front = @down
            @down = @back
            @back = tmp
        end
    end
    def getUp
        @up
    end
    def getDown
        @down
    end
    def getFront
        @front
    end
    def getBack
        @back
    end
    def getRight
        @right
    end
    def getLeft
        @left
    end
    def display
        puts "#{@up} #{@front} #{@right} #{@down} #{@back} #{@left}"
    end
    def displayUp
        puts @up
    end
    def rotation(up,front)
        if @right == front then
            move('W')
            move('S')
        elsif @left == front then
            move('E')
            move('S')
        else
            while @front != front do
                move('S')
            end
        end
        if @back != up then
            while @up != up do
                move('W')
            end
        end
    end
    def problem1
        displayUp
    end
    def problem2(up,front)
        rotation(up,front)
        puts @right
    end
    def same?(other_dice)
        rotation(other_dice.getUp,other_dice.getFront)
        @up == other_dice.getUp && @down == other_dice.getDown && @front == other_dice.getFront && @back == other_dice.getBack && @right == other_dice.getRight && @left == other_dice.getLeft
    end
    def problem3(other_dice)
        puts same?(other_dice) ? "Yes" : 'No'
    end
end

n = gets.to_i
x = gets.split.map(&:to_i)
dice = Dice.new(x)
(n-1).times do |i|
    y = gets.split.map(&:to_i)
    unless x.sort == y.sort then
        next
    end
    other_dice = Dice.new(y)
    if dice.same?(other_dice) then
        puts 'No'
        exit
    end
end
puts "Yes"
