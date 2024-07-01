class Dice
  def initialize(faces)
    @top = faces.shift
    @front = faces.shift
    @right = faces.shift
    @left = faces.shift
    @back = faces.shift
    @bottom = faces.shift
  end

  def turn_to_n
    old_top = @top
    @top = @front
    @front = @bottom
    @bottom = @back
    @back = old_top
  end

  def turn_to_e
    old_top = @top
    @top = @left
    @left = @bottom
    @bottom = @right
    @right = old_top
  end

  def turn_to_w
    old_top = @top
    @top = @right
    @right = @bottom
    @bottom = @left
    @left = old_top
  end

  def turn_to_s
    old_top = @top
    @top = @back
    @back = @bottom
    @bottom = @front
    @front = old_top
  end

  def rotate
    old_front = @front
    @front = @right
    @right = @back
    @back = @left
    @left = old_front
  end

  def right_when_top_and_front_are(top, front)
    set_top_to(top)
    keep_top_and_set_front_to(front)
    @right
  end

  def ==(other)
    return true if is_same?(other)
    4.times {
      other.rotate
      return true if is_same?(other)
    }
    3.times {
      turn_to_e
      4.times {
        other.rotate
        return true if is_same?(other)
      }
    }
    turn_to_e
    turn_to_n
    4.times {
      other.rotate
      return true if is_same?(other)
    }
    turn_to_s
    turn_to_s
    4.times {
      other.rotate
      return true if is_same?(other)
    }
    false
  end

  def is_same?(other)
    @top == other.top && @front == other.front && @right == other.right \
      && @left == other.left && @back == other.back && @bottom == other.bottom
  end

  attr_reader :top, :front, :right, :left, :back, :bottom

  private

  def set_top_to(top)
    return if @top == top
    case top
      when @front then turn_to_n
      when @left then turn_to_e
      when @right then turn_to_w
      when @back then turn_to_s
      else turn_to_s; turn_to_s
    end
  end

  def keep_top_and_set_front_to(front)
    return if @front == front
    case front
      when @left then turn_to_e; turn_to_s; turn_to_w
      when @right then turn_to_w; turn_to_s; turn_to_e
      when @back then turn_to_e; turn_to_s; turn_to_s; turn_to_w
    end
  end
end

n = gets.to_i
dices = (1..n).map {Dice.new gets.split(" ").map(&:to_i)}
count = 0
(0...n).each {|i|
  (0...n).each {|j|
    if i != j && dices[i] == dices[j] then
      count += 1
    end
  }
}
puts count == 0 ? "Yes" : "No"