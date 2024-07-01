class Dice
  @north = 5
  @south = 2
  @east = 3
  @west = 4
  @top = 1
  @bottom = 6

  def initialize(input_t, input_s, input_e, input_w, input_n, input_b)
    @north = input_n
    @south = input_s
    @east = input_e
    @west = input_w
    @top = input_t
    @bottom = input_b
  end

  def set(north, south, east, west, top, bottom)
    10000.times do
      output =  self.move(["N", "S", "E", "W"].sample)
      # p "output = #{output}, dice = [#{north}, #{south}, #{east}, #{west}, #{top}, #{bottom}]"
      if output[0] == north && output[1] == south && output[2] == east && output[3] == west && output[4] == top && output[5] == bottom
        return true
        break
      end
    end
    return false
    #@top = top, @south = front???????????????????????¶??????move??????
    #???????????°?????????false?????§????????´??????true?????????
  end

  def move(order_array)
    length = order_array.length
    for i in 0..(length-1)
      if order_array[i] == "N"
        move_north
      elsif order_array[i] == "S"
        move_south
      elsif order_array[i] == "E"
        move_east
      else
        move_west
      end
    end
    output = [@north, @south, @east, @west, @top, @bottom]
    return output
  end

  def move_north
    tmp = []
    tmp.push(@north)
    tmp.push(@south)
    tmp.push(@top)
    tmp.push(@bottom)
    @bottom = tmp[0]
    @top = tmp[1]
    @north = tmp[2]
    @south = tmp[3]
  end

  def move_south
    tmp = []
    tmp.push(@north)
    tmp.push(@south)
    tmp.push(@top)
    tmp.push(@bottom)
    @top = tmp[0]
    @bottom = tmp[1]
    @south = tmp[2]
    @north = tmp[3]

  end

  def move_east
    tmp = []
    tmp.push(@east)
    tmp.push(@west)
    tmp.push(@top)
    tmp.push(@bottom)
    @bottom = tmp[0]
    @top = tmp[1]
    @east = tmp[2]
    @west = tmp[3]
  end

  def move_west
    tmp = []
    tmp.push(@east)
    tmp.push(@west)
    tmp.push(@top)
    tmp.push(@bottom)
    @top = tmp[0]
    @west = tmp[2]
    @bottom = tmp[1]
    @east = tmp[3]
  end

end

n = gets.chomp.to_i
dice_numbers = gets.chomp.split.map(&:to_i)
input_t = dice_numbers[0]
input_s = dice_numbers[1]
input_e = dice_numbers[2]
input_w = dice_numbers[3]
input_n = dice_numbers[4]
input_b = dice_numbers[5]
answers = []
(n-1).times do
  other_dice_numbers = gets.chomp.split.map(&:to_i)
  dice2 = Dice.new(other_dice_numbers[0], other_dice_numbers[1],other_dice_numbers[2],other_dice_numbers[3],other_dice_numbers[4],other_dice_numbers[5])
  dice2_result = dice2.set(input_n, input_s, input_e, input_w, input_t, input_b)
  if dice2_result == true
    answers.push("Same")
  else
    answers.push("NotSame")
  end
end
if answers.include?("Same") == true
  puts "No"
else
  puts "Yes"
end