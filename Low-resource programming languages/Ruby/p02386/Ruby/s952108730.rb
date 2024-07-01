class Dice
  def initialize(numbers)
    @numbers = numbers
    @map = {:top => 1, :R => 6, :S => 2, :E => 3, :N => 5, :W => 4}
  end

  def move(vec)
    case vec
    when "N"
      temp = @map.clone
      temp[:top] = @map[:S]
      temp[:R] = @map[:N]
      temp[:S] = @map[:R]
      temp[:N] = @map[:top]
      @map = temp.clone
    when "W"
      temp = @map.clone
      temp[:top] = @map[:E]
      temp[:R] = @map[:W]
      temp[:E] = @map[:R]
      temp[:W] = @map[:top]
      @map = temp.clone
    when "S"
      temp = @map.clone
      temp[:top] = @map[:N]
      temp[:R] = @map[:S]
      temp[:S] = @map[:top]
      temp[:N] = @map[:R]
      @map = temp.clone
    when "E"
      temp = @map.clone
      temp[:top] = @map[:W]
      temp[:R] = @map[:E]
      temp[:E] = @map[:top]
      temp[:W] = @map[:R]
      @map = temp.clone
    end
  end

  def spin
    temp = @map.clone
    temp[:E] = @map[:N]
    temp[:W] = @map[:S]
    temp[:S] = @map[:E]
    temp[:N] = @map[:W]
    @map = temp.clone
  end

  def top_number
    @numbers[@map[:top] - 1]
  end

  def right_number
    @numbers[@map[:E] - 1]
  end

  def front_number
    @numbers[@map[:S] - 1]
  end

  def back_number
    @numbers[@map[:N] - 1]
  end

  def left_number
    @numbers[@map[:W] - 1]
  end

  def bottom_number
    @numbers[@map[:R] - 1]
  end

  def get_place(number)
    index = @numbers.index(number)
    @map.key(index + 1)
  end

  def numbers
    @numbers
  end

  def map
    @map
  end

  def equal?(dice)
    count = 1
    while count <= 6 do
      if dice.top_number == self.top_number
        4.times do
          if dice.left_number == self.left_number &&
             dice.right_number == self.right_number &&
             dice.front_number == self.front_number &&
             dice.back_number == self.back_number &&
             dice.bottom_number == self.bottom_number then
             return true
          end
          dice.spin
        end
      end
      if count % 2 == 0
        dice.move("N")
      else
        dice.move("W")
      end
      count += 1
    end
    return false
  end
end

n = gets.to_i
dices = Array.new(n)
n.times do |i|
  dices[i] = Dice.new(gets.split.map(&:to_i))
end

flag = false
for i in (0...n) do
  for j in ((i+1)...n) do
    if dices[i].equal?(dices[j])
      flag = true
    end
  end
end
flag ? (puts "No") : (puts "Yes")