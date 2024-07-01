class Dice

  def initialize(dice)
    @top  = dice[0]
    @side   = [ dice[2], dice[1], dice[3], dice[4] ]
    @bottom = dice[5]
  end

  def roll(action)
    b = @bottom
    u = @top
    case action
    when "N"
      @top   = @side[2]
      @bottom  = @side[0]
      @side[2] = b
      @side[0] = u
    when "E"
      @top   = @side[3]
      @bottom  = @side[1]
      @side[3] = b
      @side[1] = u
    when "S"
      @top   = @side[0]
      @bottom  = @side[2]
      @side[0] = b
      @side[2] = u
    when "W"
      @top   = @side[1]
      @bottom  = @side[3]
      @side[1] = b
      @side[3] = u
    end
  end

  def same_dice?(sub)
    i = 0
    while true
      if south == sub.south
        4.times do
          if all_num == sub.all_num
            # true
            return true
          end
          roll("E")
        end
      end
      if i > 6
        # false
        return false
      elsif i == 3
        roll("E")
        roll("N")
      else
        roll("N")
      end
      i += 1
    end
  end

  def top
    @top
  end

  def bottom
    @bottom
  end

  def north
    @side[0]
  end

  def east
    @side[1]
  end

  def south
    @side[2]
  end

  def west
    @side[3]
  end

  def all_num
    [@top, @bottom, @side[2], @side[1], @side[3], @side[4]]
  end
end

num = gets.to_i
dice = Dice.new(gets.split.map(&:to_i))

(1..(num-1)).each do |i|
  dice_2 = Dice.new(gets.split.map(&:to_i))
  if dice_2.same_dice?(dice)
    puts "No"
    break
  else
    if i == (num-1)
      puts "Yes"
    else
      next
    end
  end
end