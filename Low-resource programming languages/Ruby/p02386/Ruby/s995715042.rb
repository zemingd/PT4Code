class Dice
  def initialize(t, s, e, w, n, b)
    $north = n
    $south = s
    $east = e
    $west = w
    $top = t
    $bottom = b
  end

  def execute_orders(orders)
    length = orders.length
    for i in 0...length
      if orders[i] == "N"
        move_north
      elsif orders[i] == "S"
        move_south
      elsif orders[i] == "E"
        move_east
      elsif orders[i] == "W"
        move_west
      else
        puts "error!"
      end
    end
  end

  def check_dices_same(order_t, order_s, order_e, order_w, order_n, order_b)
      100.times do
        execute_orders(["N", "W"].sample)
        return true if $top == order_t && $south == order_s && $east == order_e && $west == order_w && $north == order_n && $bottom == order_b
      end
    return false
  end


  private
  def move_north
    north = $north
    south = $south
    top = $top
    bottom = $bottom
    $north = top
    $top = south
    $bottom = north
    $south = bottom
  end

  def move_south
    north = $north
    south = $south
    top = $top
    bottom = $bottom
    $south = top
    $bottom = south
    $north = bottom
    $top = north
  end

  def move_east
    top = $top
    bottom = $bottom
    east = $east
    west = $west
    $east = top
    $bottom = east
    $west = bottom
    $top = west
  end

  def move_west
    top = $top
    bottom = $bottom
    east = $east
    west = $west
    $west = top
    $bottom = west
    $east = bottom
    $top = east
  end
end

n = gets.chomp.to_i
dices = []
n.times do
  dice = gets.chomp.split.map(&:to_i)
  dices << dice
end
flag = 0
for i in 0...n-1
  dice = Dice.new(dices[i][0], dices[i][1], dices[i][2], dices[i][3], dices[i][4], dices[i][5])
  for j in i+1...n
    if dice.check_dices_same(dices[j][0], dices[j][1], dices[j][2], dices[j][3], dices[j][4], dices[j][5])
      puts "No"
      flag += 1
      break
    end
  end
  # if flag == 1
  #   break
  # end
  # if dice.check_dices_same(dices[n-1][0], dices[n-1][1], dices[n-1][2], dices[n-1][3], dices[n-1][4], dices[n-1][5])
  #   puts "No"
  #   flag += 1
  #   break
  # end
end
if flag == 0
  puts "Yes"
end