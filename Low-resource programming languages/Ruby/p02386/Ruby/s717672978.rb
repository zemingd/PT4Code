class Dice
  attr_accessor :face

  def rotate(dir)
    case dir
    when "N"
      @face[0],@face[1],@face[5],@face[4] = @face[1],@face[5],@face[4],@face[0]
    when "E"
      @face[0],@face[2],@face[5],@face[3] = @face[3],@face[0],@face[2],@face[5]
    when "S"
      @face[0],@face[1],@face[5],@face[4] = @face[4],@face[0],@face[1],@face[5]
    when "W"
      @face[0],@face[2],@face[5],@face[3] = @face[2],@face[5],@face[3],@face[0]
    when "cw" #ClockWise rotation
      self.rotate("E").rotate("N").rotate("W")
    end
    return self
  end

  def aline_dir(top, front)
    alined_dice = []
    self.face.each_with_index do |item, index|
      dice_clone = Marshal.load(Marshal.dump(self))
      if item == top
        case index
        when 1
          dice_clone.rotate("N")
        when 2
          dice_clone.rotate("W")
        when 3
          dice_clone.rotate("E")
        when 4
          dice_clone.rotate("S")
        when 5
          dice_clone.rotate("N").rotate("N")
        end
        (1..4).each do |i|
          dice_clone2 = Marshal.load(Marshal.dump(dice_clone))
          if dice_clone.face[i] == front
            case i
            when 2
              dice_clone2.rotate("cw")
            when 3
              dice_clone2.rotate("cw").rotate("cw").rotate("cw")
            when 4
              dice_clone2.rotate("cw").rotate("cw")
            end
            alined_dice.push(dice_clone2.face)
          end
        end
      end
    end
    return alined_dice
  end
  
  def same?(dice_alined)
    bool = false
    dice_alined.each do |item|
      bool = true if self.face.eql?(item)
    end
    return bool
  end
end

dices = []
n = gets.chomp.to_i
n.times do |i|
  dices.push(Dice.new)
  dices[i].face = gets.chomp.split.map(&:to_i)
end

i = 0
bool = false
n.times do |i|
  for j in i+1..n-1
    alined_dice = dices[j].aline_dir(dices[i].face[0], dices[i].face[1])
    bool = true if dices[i].same?(alined_dice)
  end
end
puts bool == true ? "No" : "Yes"