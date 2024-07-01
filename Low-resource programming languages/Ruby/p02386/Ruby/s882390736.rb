class Die
  def initialize(men)
    @t, @s, @e, @w, @n, @b = men
  end

  def top; @t; end
  def front; @s; end
  def right; @e; end

  def move(d)
    case d
    when 'N'
      @t, @s, @b, @n = @s, @b, @n, @t
    when 'W'
      @w, @b, @e, @t = @t, @w, @b, @e
    when 'E'
      @w, @b, @e, @t = @b, @e, @t, @w
    when 'S'
      @t, @s, @b, @n = @n, @t, @s, @b
    end
  end

  def make_top(num)
    3.times do
      move 'N'
      return if @t == num
      move 'E'
      return if @t == num
    end
    raise "#{num} is not found"
  end

  def rotate
    @n, @w, @s, @e = @w, @s, @e, @n
  end

  def rotate_until(num)
    4.times do
      rotate
      return if @s == num
    end
    raise "#{num} is not found"
  end

  def all
    [@t, @s, @e, @w, @n, @b]
  end


  def ==(other)
    cmp = self.all.sort.uniq
    if cmp.size == 6
      self.make_top(other.top)
      self.rotate_until(other.front)
      return self.all == other.all
    else
      3.times do
        move 'N'
        if @t == other.top
          4.times do
            rotate
            if @s == other.front
              return true if self.all == other.all
            end
          end
        end
        move 'E'
        if @t == other.top
          4.times do
            rotate
            if @s == other.front
              return true if self.all == other.all
            end
          end
        end
      end
    end
    false
  rescue
    false
  end
end

dice = []
gets.to_i.times do
  d = Die.new(gets.split)
  if dice.any? {|die| d == die }
    puts 'No'
    exit
  end
  dice << d
end
puts 'Yes'

