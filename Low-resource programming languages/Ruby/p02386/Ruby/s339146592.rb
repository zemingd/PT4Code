class Dice
  #   1
  # 4 2 3 5
  #   6
  attr_reader :pips
  def initialize(*pips)
    @pips = pips
  end

  TN = [
    [0, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1],
    [0, 0, 1, 0, 0, 0],
    [0, 0, 0, 1, 0, 0],
    [1, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1, 0],
  ]
  TE = [
    [0, 0, 0, 1, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [1, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 1, 0],
    [0, 0, 1, 0, 0, 0],
  ]
  TW = [
    [0, 0, 1, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1],
    [1, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1, 0],
    [0, 0, 0, 1, 0, 0],
  ]
  TS = [
    [0, 0, 0, 0, 1, 0],
    [1, 0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 0],
    [0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 0, 1],
    [0, 1, 0, 0, 0, 0],
  ]
  TZ = [
    [1, 0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0, 0],
    [0, 0, 0, 0, 1, 0],
    [0, 1, 0, 0, 0, 0],
    [0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 0, 1],
  ]

  def rotate!(direction)
    pips = case direction
    when :n then TN
    when :e then TE
    when :w then TW
    when :s then TS
    when :z then TZ
    end
    @pips = pips.map do |pips_j|
      @pips.zip(pips_j).map {|i, j| i * j }.inject(:+)
    end
    self
  end

  def rotate_to_top!(index)
    case index
    when 1 then self
    when 2 then self.rotate!(:n)
    when 3 then self.rotate!(:w)
    when 4 then self.rotate!(:e)
    when 5 then self.rotate!(:s)
    when 6 then self.rotate!(:n).rotate!(:n)
    end
  end

  def ==(other)
    other.pips.each.with_index(1) do |pip, idx|
      next unless pip == @pips[0]
      other.rotate_to_top!(idx)
      return true if other.pips == @pips
      3.times do
        other.rotate!(:z)
        return true if other.pips == @pips
      end
    end
    return false
  end
end

n = gets.to_i

dices = n.times.map { Dice.new(*gets.split.map(&:to_i)) }
puts dices.combination(2).any? { |a, b| a == b } ? 'No' : 'Yes'