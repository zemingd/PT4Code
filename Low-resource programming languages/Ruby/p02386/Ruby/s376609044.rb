class Dice
  def initialize(a,b,c,d,e,f)
    @top   = a
    @down  = b
    @right = c
    @left  = d
    @up    = e
    @back  = f
  end
  attr_accessor :top,:down,:right,:left,:up,:back
  def move(dice,m)
    top=@top
    down=@down
    right=@right
    left=@left
    up=@up
    back=@back

    if m=="S"
      @top=  up
      @down= top
      @right=right
      @left= left
      @up=   back
      @back= down
    elsif m=="W"
      @top=  right
      @down= down
      @right=back
      @left= top
      @up=   up
      @back= left
    elsif m=="N"
      @top=  down
      @down= back
      @right=right
      @left= left
      @up=   top
      @back= up
    elsif m=="E"
      @top=  left
      @down= down
      @right=top
      @left= back
      @up=   up
      @back= right
    end
  end
  def printDice
#    puts "top:#{@top}  down:#{@down}  right:#{@right}  lefr:#{@left} up:#{@up} back:#{@back}"
     puts @right
  end
end

n=gets.to_i
dices=[]
n.times do
  a,b,c,d,e,f=gets.split.map(&:to_i)
  dices<<Dice.new(a,b,c,d,e,f)
end
flag =  0
flag2 = 0
n.times do |i|
  1000.times do
    random = Random.new
    ran=random.rand(1..4)
    if ran == 1
      dices[i].move(dices[i],"W")
    elsif ran==2
      dices[i].move(dices[i],"E")
    elsif ran==3
      dices[i].move(dices[i],"S")
    elsif ran==4
      dices[i].move(dices[i],"N")
    end
    n.times do |j|
      next if i==j
      if dices[i].top   == dices[j].top   &&
         dices[i].down  == dices[j].down  &&
         dices[i].left  == dices[j].left  &&
         dices[i].right == dices[j].right &&
         dices[i].up    == dices[j].up    &&
         dices[i].back  == dices[j].back
        flag=1
        flag2=1
        break
      end
    end
    break if flag2==1
  end
end
if flag==1
  puts "No"
elsif flag==0
  puts "Yes"
end
