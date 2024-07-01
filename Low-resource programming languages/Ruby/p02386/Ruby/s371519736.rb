class Dice
  attr_accessor :status
  def initialize(status)
    @status = status
  end

  def compareSpec(dice)
    @d2 = dice.status
    return (matchDirect == @d2) ? true : false
  end

  def matchDirect
    dt = Array.new(6)
    3.times do |i|
      idx = (i != 2) ? detectIndex(i) : detectSideIndex(@status.index(dt[0]) + 1, @status.index(dt[1]) + 1)
      dt[i] = @status[idx]
      dt[5-i] = @status[5-idx]
    end
    return dt
  end

  def detectIndex(i)
    idx = 0
    @status.each_with_index do |dir,j|
      if ((dir == @d2[i]) && (@status[5-j] == @d2[5-i]))
        idx = j
        break
      end
    end
    return idx
  end

  def detectSideIndex(top,front)
    idx = 0
    case top
    when 1,6
      s = [2,3,5,4]
      idx = sideArrange(top,front,s)
    when 2,5
      s = [1,4,6,3]
      idx = sideArrange(top,front,s)
    when 3,4
      s = [1,2,6,5]
      idx = sideArrange(top,front,s)
    end
    return idx
  end

  def sideArrange(top,front,s)
    s.unshift(s.pop) while (s.include?(front))&&(s[0] != front)
    return ([1,2,3].include?(top)) ? s[1] - 1 : s[-1] - 1
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