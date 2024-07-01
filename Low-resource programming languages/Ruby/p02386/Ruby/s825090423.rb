class Dice
  attr :top, :front, :right, :left, :back, :bottom
  def initialize a,b,c,d,e,f
    @top = a; @front = b; @right = c; @left = d; @back = e; @bottom = f
  end
  def == other
    other.top == @top && other.front == @front && other.right == @right \
    && other.left == @left && other.back == @back && other.bottom == @bottom
  end
  def rotN
    t = @top; @top = @front; @front = @bottom; @bottom = @back; @back = t; self
  end
  def rotE
    t = @top; @top = @left; @left = @bottom; @bottom = @right; @right = t; self
  end
  def rotW
    t = @top; @top = @right; @right = @bottom; @bottom = @left; @left = t; self
  end
  def rotS
    t = @top; @top = @back; @back = @bottom; @bottom = @front; @front = t; self
  end
  def rotV
    t = @front; @front = @left; @left = @back; @back = @right; @right = t; self
  end
  def show
#    printf("%d %d %d %d %d %d\n",@top,@front,@right,@left,@back,@bottom)
  end
  def isSame die
    ret = false
    for i in 1..4
      die.rotV
      die.show
      ret = true if die == self
    end
    die.rotE
    for i in 1..4
      die.rotV
      die.show
      ret = true if die == self
    end
    die.rotE
    for i in 1..4
      die.rotV
      die.show
      ret = true if die == self
    end
    die.rotE
    for i in 1..4
      die.rotV
      die.show
      ret = true if die == self
    end
    die.rotE.rotN
    for i in 1..4
      die.rotV
      die.show
      ret = true if die == self
    end
    die.rotS.rotS
    for i in 1..4
      die.rotV
      die.show
      ret = true if die == self
    end
    ret
  end
end

n = gets.to_i
ary = Array.new(n)
for i in 1..n
  a,b,c,d,e,f = gets.split.map {|s| s.to_i}
  d = Dice.new(a,b,c,d,e,f)
  ary[i-1] = d
end
ret = true
for i in 1..n-1
  for j in i+1..n
    ret = false if ary[i-1].isSame(ary[j-1])
  end
end
if ret
  puts "Yes"
else
  puts "No"
end