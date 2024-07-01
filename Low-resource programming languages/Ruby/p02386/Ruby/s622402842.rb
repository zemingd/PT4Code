Dice = Struct.new(:top, :front, :right, :left, :back, :bottom) do
    def roll(x)
        case x
        when "E"
            k = self.top
            self.top = self.left
            self.left = self.bottom
            self.bottom = self.right
            self.right = k
        when "N"
            k = self.top
            self.top = self.front
            self.front = self.bottom
            self.bottom = self.back
            self.back = k
        when "S"
            k = self.top
            self.top = self.back
            self.back = self.bottom
            self.bottom = self.front
            self.front = k
        when "W"
            k = self.top
            self.top = self.right
            self.right = self.bottom
            self.bottom = self.left
            self.left =k
        end
    end
    
    def twist
        k = self.front
        self.front = self.right
        self.right = self.back
        self.back = self.left
        self.left = k
    end
end

dice_ary = []
dice_tmp = Dice.new

n = gets.to_i

n.times{|i|
    tmp = Dice.new
    tmp.top, tmp.front, tmp.right, tmp.left, tmp.back, tmp.bottom = gets.split
    dice_ary.push(tmp)
}

founded = false

ary = ["","N","W","E","S","NN"]

for i in 1..(dice_ary.length - 1)
    for c in ary 
        dice_tmp = dice_ary[i].dup
        if c != "" then
            for x in c.split("")
                dice_tmp.roll(x)
            end
        end
        4.times{
            dice_tmp.twist
            if dice_ary[0] == dice_tmp then
                founded = true
                break
            end
        }
    end
end

if !founded then
    puts "Yes"
else
    puts "No"
end
