class Dice
  def initialize num_dict
    @num=num_dict

    @top=1
    @bottom=6
    @right=3
    @left=4
    @forward=5
    @backward=2

  end

  def ==(other)
    checkSameDice(other)
  end

  def checkSameDice(other)
    1.upto 6 do |i|
      setTop i 
      4.times do
        counterClockWiseRot
        return true if checkSameNumDice(other) 
      end
    end
    false
  end

  def checkSameNumDice(other)
    otherNum=other.instance_variable_get(:@num)
    if ( (@num[@top]==otherNum[other.instance_variable_get('@top')])&&(@num[@bottom]==otherNum[other.instance_variable_get('@bottom')])&&(@num[@right]==otherNum[other.instance_variable_get('@right')])&&(@num[@left]==otherNum[other.instance_variable_get('@left')])&&(@num[@forward]==otherNum[other.instance_variable_get('@forward')])&&(@num[@backward]==otherNum[other.instance_variable_get('@backward')]) )
      return true
    else
      return false
    end
  end

  def counterClockWiseRot
    temp=@right
    @right=@backward
    @backward=@left
    @left=@forward
    @forward=temp
  end

  def to_s
    <<"EOS"
    top:      #{@num[@top]}
    bottom:   #{@num[@bottom]}
    right:    #{@num[@right]}
    left:     #{@num[@left]}
    forward:  #{@num[@forward]}
    backward: #{@num[@backward]}

EOS
  end

  def getTop
    @num[@top]
  end

  def moveE
    temp=@top
    @top=@left
    @left=@bottom
    @bottom=@right
    @right=temp
  end

  def setTop(top)
    4.times {
      return true if @top==top
      moveN
    }
    counterClockWiseRot
    4.times {
      return true if @top==top
      moveN
    }
    false
    end

  def setRight(rightNum)
    top=@num.key(rightNum)
    3.times do |i|
      break if @top==top
      moveE
      moveN if @top!=top
    end
    if @top==top
      moveE
      return true
    end
    false
  end
    
  def moveW
    temp=@top
    @top=@right
    @right=@bottom
    @bottom=@left
    @left=temp
  end

  def moveN
    temp=@top
    @top=@backward
    @backward=@bottom
    @bottom=@forward
    @forward=temp
  end
  
  def moveS
    temp=@top
    @top=@forward
    @forward=@bottom
    @bottom=@backward
    @backward=temp
  end

  def rotate(char)
    case char
      when "E"
        moveE
      when "W"
        moveW
      when "N"
        moveN
      when "S"
        moveS
    end
  end

  def setBackwardandRight(backNum,rightNum)
    back=@num.key(backNum)
    right=@num.key(rightNum)
    3.times{
      break if @backward==back
      moveN
    }
    if @backward!=back
      moveE
      while @backward!=back
        moveN
      end
    end
 
    while @right!=right
      moveE
    end
  end
end

def newDiceFromInput
  a,b,c,d,e,f=STDIN.gets.split(" ")
  Dice.new({1 => a.to_i , 2 => b.to_i , 3 => c.to_i , 4 => d.to_i , 5 => e.to_i , 6 => f.to_i})
end

num=STDIN.gets.to_i
dices=[]
num.times do
  dices<<newDiceFromInput
end
noFlag=false
dices.each_with_index do |dice,i|
  dices.each_with_index  do |other,j|
    next if i==j
    noFlag=true if dice==other
  end
end
if noFlag
  puts "No"
else
  puts "Yes"
end