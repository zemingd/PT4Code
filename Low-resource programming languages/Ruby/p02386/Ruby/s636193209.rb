class Dice

  def initialize (given_ary)
    @ary = given_ary
  end

  def topface(val)
    4.times do
      self.roll("E")
      if self.top == val
        return
      end
    end
    3.times do
      self.roll("N")
      if self.top == val
        return
      end
    end
  end

  def frontface(val)
    4.times do
      tmp = @ary[1]
      @ary[1] = @ary[2]
      @ary[2] = @ary[4]
      @ary[4] = @ary[3]
      @ary[3] = tmp
     if @ary[1] == val
       return
     end
   end
 end

 def checkall(givendice)
   4.times do
     self.roll("E")
     4.times do
       tmp = @ary[1]
       @ary[1] = @ary[2]
       @ary[2] = @ary[4]
       @ary[4] = @ary[3]
       @ary[3] = tmp
      if identical(givendice)
        return true
      end
    end
  end
  3.times do
    self.roll("N")
    4.times do
      tmp = @ary[1]
      @ary[1] = @ary[2]
      @ary[2] = @ary[4]
      @ary[4] = @ary[3]
      @ary[3] = tmp
      if identical(givendice)
        return true
      end
    end
  end
  return false
end

def roll (direction)
case direction.downcase
when "e"
  tmp = @ary[1]
  @ary[0] = @ary[3]
  @ary[3] = @ary[5]
  @ary[5] = @ary[2]
  @ary[2] = tmp
when "w"
  tmp = @ary[1]
  @ary[0] = @ary[2]
  @ary[2] = @ary[5]
  @ary[5] = @ary[3]
  @ary[3] = tmp
when "s"
  tmp = @ary[1]
  @ary[0] = @ary[4]
  @ary[4] = @ary[5]
  @ary[5] = @ary[1]
  @ary[1] = tmp
when "n"
  tmp = @ary[1]
  @ary[0] = @ary[1]
  @ary[1] = @ary[5]
  @ary[5] = @ary[4]
  @ary[4] = tmp
 end
end

  def top
   @ary[0]
  end

  def front
    @ary[5]
  end

  def right
    @ary[2]
  end

  def vals
    @ary
  end

  def compare(givendice)
    4.times do
      self.roll("E")
      if identical(givendice)
        return true
      end
    end
    3.times do
      self.roll("N")
      if identical(givendice)
        return true
      end
      4.times do
        self.roll("E")
        if identical(givendice)
          return true
        end
      end

    end
    false

    end

  def identical(givendice)
    @ary.zip(givendice.vals).map{ |x,y| (x-y).abs}.inject(:+) == 0
  end

end

  dices = Array.new()
  gets.to_i.times do
    dices << Dice.new(gets.split.map(&:to_i))
end
  result = ""
  dices.each do |outer|
    dices.each do |inner|
      if outer === inner
        next
      end
      if outer.checkall(inner)
        puts "No"
        exit
      end
    end
  end
 puts "Yes"
 