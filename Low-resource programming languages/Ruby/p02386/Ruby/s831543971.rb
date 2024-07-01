class Dice
  attr_accessor :status
  def initialize(status)
    @status = status
  end

  def compareSpec(dice)
    @d2 = dice.status
    @dt = Array.new(6)
    @index = Array.new(3)
    2.times do |i|
      detectIndex(i)
    end
    checkRelate
    if (@index.select{|k| k == nil}.length == 1) && (@status[@index[0]] == @status[@index[1]]) && (@status[5-@index[0]] == @status[5-@index[1]])
      @index[0,2] = [@index[1], @index[0]]
      checkRelate
    end
    return (@index.include?(nil)) ? false : true
  end

  def detectIndex(i)
    @status.each_with_index do |dir,j|
      if ((dir == @d2[i]) && (@status[5-j] == @d2[5-i])) && !(@index.include?(j))
        @index[i] = j
        break
      end
    end
  end

  def checkRelate
    top = (@index[0]!=nil) ? @index[0] + 1 : 0
    front = (@index[1]!=nil) ? @index[1] + 1 : 0
    case top
    when 1,6
      sides = [2,3,5,4]
      idx = defineSide(sides,top,front)
    when 2,5
      sides = [1,4,6,3]
      idx = defineSide(sides,top,front)
    when 3,4
      sides = [1,2,6,5]
      idx = defineSide(sides,top,front)
    end
    @index[2] = idx if ( (idx != nil) && (@status[idx] == @d2[2]) && (@status[5-idx] == @d2[3]) )
  end

  def defineSide(sides,top,front)
    sides.unshift(sides.pop) while ((sides.include?(front)) && (sides[0] != front))
    return ([1,2,3].include?(top)) ? sides[1] - 1 : sides[-1] - 1
  end
end

n = gets.to_i
dices = []
n.times do
  dices<<gets.split.map(&:to_i)
end
catch(:stop) do
  dices[0..-2].each_with_index do |status,i|
    d1 = Dice.new(status)
    dices[(i+1)..-1].each do |status2|
      d2 = Dice.new(status2)
      if (d1.compareSpec(d2) == true)
        puts "No"
        throw :stop
      else
      end
      puts "Yes" if (i == (dices.length-2))&&(status2 == dices.last)
    end
  end
end