Dice = Struct.new(:top, :south, :east, :west, :north, :bottom) do
  def self.init(labels)
    labels = labels.dup.freeze
    raise ArgumentError, "length of labels should be 6" unless labels.count == 6

    new(*labels)
  end

  def rotate(direction)
    case direction
    when ?N then rotate_northward
    when ?S then rotate_southward
    when ?E then rotate_eastward
    when ?W then rotate_westward
    when ?R then rotate_right
    when ?L then rotate_left
    else raise ArgumentError, "direction should be N, S, E, W, L or R, but #{direction} was given."
    end
  end

  def labels
    [top, south, east, west, north, bottom]
  end

  def rotate_westward
    a,b,c,d,e,f = labels
    self.class.init([c,b,f,a,e,d])
  end

  def rotate_eastward
    c,b,f,a,e,d = labels
    self.class.init([a,b,c,d,e,f])
  end

  def rotate_southward
    a,b,c,d,e,f = labels
    self.class.init([e,a,c,d,f,b])
  end

  def rotate_northward
    e,a,c,d,f,b = labels
    self.class.init([a,b,c,d,e,f])
  end

  def rotate_left
    a,b,c,d,e,f = labels
    self.class.init([a,d,b,e,c,f])
  end

  def rotate_right
    a,d,b,e,c,f = labels
    self.class.init([a,b,c,d,e,f])
  end

  def same?(other)
    self.all_state.include?(other)
  end

  def [](index)
    raise ArgumentError, "index should be in 1 to 6" unless (1..6).include?(index)

    labels[index-1]
  end

  def all_state
    ('WNWNWN'.chars.flat_map{|c|[c,*[?R]*4]}).reduce([self]){|dices, inst|
      dices + [dices[-1].rotate(inst)]
    }
  end
end

puts gets.to_i.times.map {
  labels = gets.split.map(&:to_i)
  dice = Dice.init(labels)
}.combination(2).any?{|a, b| a.same?(b) } ? 'No' : 'Yes'

