class Dice
  def initialize(dice = [])
    @dice = dice
  end

  def get_top
    @dice[0]
  end
  
  def get_front
    @dice[1]
  end

  def get_right
    @dice[2]
  end

  def get_left
    @dice[3]
  end

  def get_back
    @dice[4]
  end

  def get_bottom
    @dice[5]
  end

  def get_dice_array
    [ 
      @dice[0],
      @dice[1],
      @dice[2],
      @dice[3],
      @dice[4],
      @dice[5]
    ]
  end

  def set_top(t)
    case t
    when @dice[0]
      return
    when @dice[1]
      self.role("N")
    when @dice[2]
      self.role("W")
    when @dice[3]
      self.role("E")
    when @dice[4]
      self.role("S")
    when @dice[5]
      self.role("N")
      self.role("N")
    end
  end


  def role(c)
    case c
    when "N"
      @dice = 
        [
          @dice[1],
          @dice[5],
          @dice[2],
          @dice[3],
          @dice[0],
          @dice[4]
        ]

    when "S"
      @dice = 
        [
          @dice[4],
          @dice[0],
          @dice[2],
          @dice[3],
          @dice[5],
          @dice[1]
        ]
    
    when "E"
      @dice = 
        [
          @dice[3],
          @dice[1],
          @dice[0],
          @dice[5],
          @dice[4],
          @dice[2]
        ]
    
    when "W"
      @dice = 
        [
          @dice[2],
          @dice[1],
          @dice[5],
          @dice[0],
          @dice[4],
          @dice[3]
        ]
    end
  end

  def set_front(n)
    case n
    when @dice[0]
      return false
    when @dice[1]
      return true
    when @dice[2]
      self.turn("L")
    when @dice[3]
      self.turn("R")
    when @dice[4]
      self.turn("R")
      self.turn("R")
    when @dice[5]
      return false
    end
  end

  def turn(c)
    case c
    when "R"
      @dice =
        [
          @dice[0],
          @dice[2],
          @dice[4],
          @dice[1],
          @dice[3],
          @dice[5]
      ]
    when "L"
      @dice =
        [
          @dice[0],
          @dice[3],
          @dice[1],
          @dice[4],
          @dice[2],
          @dice[5]
        ]
    end
  end
end

gets

dice_arr = gets.split.map(&:to_i)
@dice_origin = Dice.new(dice_arr)
same_dice = false

ARGF.each_line do |line|
  dice_arr = line.split.map(&:to_i)
  @dice = Dice.new(dice_arr)

  4.times do
    4.times do
      if @dice_origin.get_dice_array == @dice.get_dice_array
        same_dice = true
      end
      @dice.turn("R")
    end
    @dice.role("N")
  end

  4.times do
    4.times do
      if @dice_origin.get_dice_array == @dice.get_dice_array
        same_dice = true
      end
      @dice.turn("R")
    end
    @dice.role("E")
  end
end


if same_dice 
  puts "No" 
else
  puts "Yes"
end