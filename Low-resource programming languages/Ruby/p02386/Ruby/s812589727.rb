class Dice
    # constructor
    def initialize(line)
        @figures = line.chomp.split(" ").map(&:to_i)
    end
    
    # Rotate in any direction
    def rotate(direction)
        array = Array.new(6)
        
        case direction
        when "N"
            array[0] = @figures[1]
            array[1] = @figures[5]
            array[2] = @figures[2]
            array[3] = @figures[3]
            array[4] = @figures[0]
            array[5] = @figures[4]
        when "S"
            array[0] = @figures[4]
            array[1] = @figures[0]
            array[2] = @figures[2]
            array[3] = @figures[3]
            array[4] = @figures[5]
            array[5] = @figures[1]
        when "W"
            array[0] = @figures[2]
            array[1] = @figures[1]
            array[2] = @figures[5]
            array[3] = @figures[0]
            array[4] = @figures[4]
            array[5] = @figures[3]
        when "E"
            array[0] = @figures[3]
            array[1] = @figures[1]
            array[2] = @figures[0]
            array[3] = @figures[5]
            array[4] = @figures[4]
            array[5] = @figures[2]
        end
        @figures = Marshal.load(Marshal.dump(array))
    end
    
    # Rotate horizontally
    def turnClockwise()
        array = Array.new(6)
        array[0] = @figures[0]
        array[1] = @figures[2]
        array[2] = @figures[4]
        array[3] = @figures[1]
        array[4] = @figures[3]
        array[5] = @figures[5]
        @figures = Marshal.load(Marshal.dump(array))
    end
    
    def showTop()
        return @figures[0]
    end
    
    def showBottom
        return @figures[5]
    end
    
    def showFront()
        return @figures[1]
    end
    
    def showBack()
        return @figures[4]
    end
    
    def showRight()
        return @figures[2]
    end
    
    def showLeft()
        return @figures[3]
    end
    
    def showLabel()
        return @figures.join(" ")
    end
end

def isMatchTwoDices(label1, label2)
    dice1 = Dice.new(label1.chomp)
    dice2 = Dice.new(label2.chomp)

    for i in 1..4
        for j in 1..4
            if dice1.showTop() == dice2.showTop()
                for k in 1..4
                    if dice1.showLabel() == dice2.showLabel()
                        return true
                        exit
                    else
                        dice1.turnClockwise()
                    end
                end
            else
                dice1.rotate("N")
            end
        end
        dice1.rotate("W")
    end
    return false
end
##### Main Method #####
n = gets.to_i

input = []
(1..n).each {input << gets.chomp}

for i in 0..n - 2
    for j in i + 1..n - 1
        if isMatchTwoDices(input[i], input[j])
            puts "No"
            exit
        end
    end
end
puts "Yes"
