class Dice
  attr_reader :labels

  def initialize(args)
    @labels = args
  end

  def top
    @labels[0]
  end

  def move(a,b,c,d)
    arr = [@labels[a], @labels[b], @labels[c], @labels[d]]
    t = arr.shift
    arr << t
    @labels[a], @labels[b], @labels[c], @labels[d] = arr
  end

  def move_n
    move(0,1,5,4)
  end

  def move_e
    move(0,3,5,2)
  end

  def move_s
    move(4,5,1,0)
  end

  def move_w
    move(2,5,3,0)
  end

  def move_to_input(ch)
    case ch
    when 'E'
      move_e
    when 'N'
      move_n
    when 'S'
      move_s
    when 'W'
      move_w
    end
  end
end

n = gets.to_i
dices = []
n.times do
  input = gets.split.map(&:to_i)
  dices << Dice.new(input)
end

f = 'Yes'

dices.combination(2) do |dice1, dice2|
  10000.times do
    dice2.move_to_input('ENSW'.chars.sample)
    if dice1.labels == dice2.labels
      f = 'No'
      break
    end
  end
end

puts f