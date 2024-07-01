class Dice
  def initialize(n)
    @n = n
  end
  #     ^N
  #     [0]:top
  # [3] [1] [2] [4]  2:right 3:left 4:back
  #     [5]:bottom
  #     vS
  attr_reader :n

  def roll(d)
    case d
    when ?N
      @n = [@n[1], @n[5], @n[2], @n[3], @n[0], @n[4]]
    when ?S
      @n = [@n[4], @n[0], @n[2], @n[3], @n[5], @n[1]]
    when ?E
      @n = [@n[3], @n[1], @n[0], @n[5], @n[4], @n[2]]
    when ?W
      @n = [@n[2], @n[1], @n[5], @n[0], @n[4], @n[3]]
    else
      raise
    end
    self
  end
  def rotate_right
    @n = [@n[0], @n[2], @n[4], @n[1], @n[3], @n[5]]
    self
  end
  def rotate_left
    @n = [@n[0], @n[3], @n[1], @n[4], @n[2], @n[5]]
    self
  end
  def print
    puts "  #{@n[0]}"
    puts "#{@n[3]} #{@n[1]} #{@n[2]} #{@n[4]}"
    puts "  #{@n[5]}"
  end
  # CAUTION !! THIS FUNCTION WILL ROTATE DICE
  # IF YOU DON'T WANT, KEEP VALUE FIRST AND RESTORE BEFORE RETURN
  def ==(other)
    c1 = @n.uniq.map{|e| [e, @n.count(e)]}.sort{|a,b|a[1]<=>b[1]}
    c2 = other.n.uniq.map{|e| [e, @n.count(e)]}.sort{|a,b|a[1]<=>b[1]}
    return false if c1 != c2
    other.set_upper_by_value(c1[0][0])
    return true if c1.size < 2 # only 1 number
    idx = @n.map.with_index{|p,i| i if p==c1[0][0]}.compact
    idx.each{|i|
      set_upper_by_index(i)
      4.times{
        return true if self.n == other.n
        rotate_right
      }
    }
    return false
  end
  def set_upper_by_index(idx)
    case idx
    when 0
      ;
    when 1
      self.roll(?N)
    when 2
      self.roll(?W)
    when 3
      self.roll(?E)
    when 4
      self.roll(?S)
    when 5
      self.roll(?N)
      self.roll(?N)
    when nil
      raise "@n:#{@n} idx:#{idx}"
    end
    self
  end
  def set_upper_by_value(u)
    set_upper_by_index(@n.index(u))
  end
  def set_up_n_front(u, f)
    set_upper_by_value(u)
    case @n.index(f)
    when 1
      ;
    when 2
      self.rotate_right
    when 3
      self.rotate_left
    when 4
      self.rotate_left.rotate_left
    when 0, 5, nil
      raise "@n:#{@n} u:#{u} f:#{f}"
    end
    self
  end
end

n=gets.to_i
d=[]
n.times{
  d << Dice.new(gets.split.map(&:to_i))
}
n.times{|i|
  p d[i].n.to_s
  (i+1).upto(n-1){|j|
    if d[i] == d[j]
      puts "No"
      exit
    end

